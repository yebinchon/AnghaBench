
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ dc_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;


 int MALIDP550_DC_CONFIG_REQ ;
 scalar_t__ MALIDP_REG_STATUS ;
 int malidp_hw_read (struct malidp_hw_device*,scalar_t__) ;

__attribute__((used)) static bool malidp550_in_config_mode(struct malidp_hw_device *hwdev)
{
 u32 status;

 status = malidp_hw_read(hwdev, hwdev->hw->map.dc_base + MALIDP_REG_STATUS);
 if ((status & MALIDP550_DC_CONFIG_REQ) == MALIDP550_DC_CONFIG_REQ)
  return 1;

 return 0;
}
