
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_extcon_data {int dummy; } ;
typedef int irqreturn_t ;


 int BCOVE_LVL1_CHGR ;
 int BCOVE_MIRQLVL1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mrfld_extcon_cable_detect (struct mrfld_extcon_data*) ;
 int mrfld_extcon_clear (struct mrfld_extcon_data*,int ,int ) ;

__attribute__((used)) static irqreturn_t mrfld_extcon_interrupt(int irq, void *dev_id)
{
 struct mrfld_extcon_data *data = dev_id;
 int ret;

 ret = mrfld_extcon_cable_detect(data);

 mrfld_extcon_clear(data, BCOVE_MIRQLVL1, BCOVE_LVL1_CHGR);

 return ret ? IRQ_NONE: IRQ_HANDLED;
}
