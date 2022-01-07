
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct malidp_hw_device {TYPE_2__* hw; } ;
struct TYPE_3__ {int features; } ;
struct TYPE_4__ {TYPE_1__ map; } ;


 int MALIDP_REGMAP_HAS_CLEARIRQ ;
 scalar_t__ MALIDP_REG_CLEARIRQ ;
 scalar_t__ MALIDP_REG_STATUS ;
 scalar_t__ malidp_get_block_base (struct malidp_hw_device*,int ) ;
 int malidp_hw_write (struct malidp_hw_device*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void malidp_hw_clear_irq(struct malidp_hw_device *hwdev, u8 block, u32 irq)
{
 u32 base = malidp_get_block_base(hwdev, block);

 if (hwdev->hw->map.features & MALIDP_REGMAP_HAS_CLEARIRQ)
  malidp_hw_write(hwdev, irq, base + MALIDP_REG_CLEARIRQ);
 else
  malidp_hw_write(hwdev, irq, base + MALIDP_REG_STATUS);
}
