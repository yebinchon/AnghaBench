
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivch_priv {int* reg_backup; } ;
struct intel_dvo_device {struct ivch_priv* dev_priv; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEBUG_KMS (char*) ;
 int VR10 ;
 int * backup_addresses ;
 int ivch_write (struct intel_dvo_device*,int ,int) ;

__attribute__((used)) static void ivch_reset(struct intel_dvo_device *dvo)
{
 struct ivch_priv *priv = dvo->dev_priv;
 int i;

 DRM_DEBUG_KMS("Resetting the IVCH registers\n");

 ivch_write(dvo, VR10, 0x0000);

 for (i = 0; i < ARRAY_SIZE(backup_addresses); i++)
  ivch_write(dvo, backup_addresses[i], priv->reg_backup[i]);
}
