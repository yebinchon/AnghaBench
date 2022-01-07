
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_pipeline {int dou_addr; } ;
struct d71_dev {struct d71_pipeline** pipes; } ;


 int BLK_IRQ_MASK ;
 int DOU_IRQ_PL0 ;
 int malidp_write32_mask (int ,int ,int ,int ) ;

__attribute__((used)) static void d71_on_off_vblank(struct komeda_dev *mdev, int master_pipe, bool on)
{
 struct d71_dev *d71 = mdev->chip_data;
 struct d71_pipeline *pipe = d71->pipes[master_pipe];

 malidp_write32_mask(pipe->dou_addr, BLK_IRQ_MASK,
       DOU_IRQ_PL0, on ? DOU_IRQ_PL0 : 0);
}
