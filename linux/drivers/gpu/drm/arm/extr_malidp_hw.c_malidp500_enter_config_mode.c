
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {scalar_t__ dc_base; } ;
struct TYPE_4__ {TYPE_1__ map; } ;


 scalar_t__ MALIDP500_DC_CONFIG_REQ ;
 int MALIDP500_DC_CONTROL ;
 scalar_t__ MALIDP_REG_STATUS ;
 int WARN (int,char*) ;
 scalar_t__ malidp_hw_read (struct malidp_hw_device*,scalar_t__) ;
 int malidp_hw_setbits (struct malidp_hw_device*,scalar_t__,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void malidp500_enter_config_mode(struct malidp_hw_device *hwdev)
{
 u32 status, count = 100;

 malidp_hw_setbits(hwdev, MALIDP500_DC_CONFIG_REQ, MALIDP500_DC_CONTROL);
 while (count) {
  status = malidp_hw_read(hwdev, hwdev->hw->map.dc_base + MALIDP_REG_STATUS);
  if ((status & MALIDP500_DC_CONFIG_REQ) == MALIDP500_DC_CONFIG_REQ)
   break;




  usleep_range(1000, 10000);
  count--;
 }
 WARN(count == 0, "timeout while entering config mode");
}
