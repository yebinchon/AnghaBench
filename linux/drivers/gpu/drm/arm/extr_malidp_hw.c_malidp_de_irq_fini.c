
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct malidp_hw_device {TYPE_4__* hw; } ;
struct TYPE_6__ {int irq_mask; } ;
struct TYPE_5__ {int irq_mask; } ;
struct TYPE_7__ {TYPE_2__ dc_irq_map; TYPE_1__ de_irq_map; } ;
struct TYPE_8__ {TYPE_3__ map; } ;


 int MALIDP_DC_BLOCK ;
 int MALIDP_DE_BLOCK ;
 int malidp_hw_disable_irq (struct malidp_hw_device*,int ,int ) ;

void malidp_de_irq_fini(struct malidp_hw_device *hwdev)
{
 malidp_hw_disable_irq(hwdev, MALIDP_DE_BLOCK,
         hwdev->hw->map.de_irq_map.irq_mask);
 malidp_hw_disable_irq(hwdev, MALIDP_DC_BLOCK,
         hwdev->hw->map.dc_irq_map.irq_mask);
}
