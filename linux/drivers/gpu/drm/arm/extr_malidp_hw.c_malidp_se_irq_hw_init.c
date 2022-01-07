
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct malidp_hw_device {TYPE_3__* hw; } ;
struct TYPE_4__ {int irq_mask; } ;
struct TYPE_5__ {TYPE_1__ se_irq_map; } ;
struct TYPE_6__ {TYPE_2__ map; } ;


 int MALIDP_SE_BLOCK ;
 int malidp_hw_clear_irq (struct malidp_hw_device*,int ,int) ;
 int malidp_hw_disable_irq (struct malidp_hw_device*,int ,int) ;
 int malidp_hw_enable_irq (struct malidp_hw_device*,int ,int ) ;

void malidp_se_irq_hw_init(struct malidp_hw_device *hwdev)
{

 malidp_hw_disable_irq(hwdev, MALIDP_SE_BLOCK, 0xffffffff);
 malidp_hw_clear_irq(hwdev, MALIDP_SE_BLOCK, 0xffffffff);

 malidp_hw_enable_irq(hwdev, MALIDP_SE_BLOCK,
        hwdev->hw->map.se_irq_map.irq_mask);
}
