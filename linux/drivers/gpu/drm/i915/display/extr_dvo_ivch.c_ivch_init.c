
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ivch_priv {int quiet; int width; int height; int* reg_backup; } ;
struct intel_dvo_device {int slave_addr; struct ivch_priv* dev_priv; struct i2c_adapter* i2c_bus; } ;
struct i2c_adapter {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int GFP_KERNEL ;
 int VR00 ;
 int VR00_BASE_ADDRESS_MASK ;
 int VR20 ;
 int VR21 ;
 int * backup_addresses ;
 int ivch_dump_regs (struct intel_dvo_device*) ;
 int ivch_read (struct intel_dvo_device*,int ,int*) ;
 int kfree (struct ivch_priv*) ;
 struct ivch_priv* kzalloc (int,int ) ;

__attribute__((used)) static bool ivch_init(struct intel_dvo_device *dvo,
        struct i2c_adapter *adapter)
{
 struct ivch_priv *priv;
 u16 temp;
 int i;

 priv = kzalloc(sizeof(struct ivch_priv), GFP_KERNEL);
 if (priv == ((void*)0))
  return 0;

 dvo->i2c_bus = adapter;
 dvo->dev_priv = priv;
 priv->quiet = 1;

 if (!ivch_read(dvo, VR00, &temp))
  goto out;
 priv->quiet = 0;





 if ((temp & VR00_BASE_ADDRESS_MASK) != dvo->slave_addr) {
  DRM_DEBUG_KMS("ivch detect failed due to address mismatch "
     "(%d vs %d)\n",
     (temp & VR00_BASE_ADDRESS_MASK), dvo->slave_addr);
  goto out;
 }

 ivch_read(dvo, VR20, &priv->width);
 ivch_read(dvo, VR21, &priv->height);




 for (i = 0; i < ARRAY_SIZE(backup_addresses); i++)
  ivch_read(dvo, backup_addresses[i], priv->reg_backup + i);

 ivch_dump_regs(dvo);

 return 1;

out:
 kfree(priv);
 return 0;
}
