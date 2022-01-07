
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct malidp_hw_device {int dummy; } ;


 int MALIDP550_CONFIG_VALID ;
 int MALIDP_CFG_VALID ;
 int malidp_hw_clearbits (struct malidp_hw_device*,int ,int ) ;
 int malidp_hw_setbits (struct malidp_hw_device*,int ,int ) ;

__attribute__((used)) static void malidp550_set_config_valid(struct malidp_hw_device *hwdev, u8 value)
{
 if (value)
  malidp_hw_setbits(hwdev, MALIDP_CFG_VALID, MALIDP550_CONFIG_VALID);
 else
  malidp_hw_clearbits(hwdev, MALIDP_CFG_VALID, MALIDP550_CONFIG_VALID);
}
