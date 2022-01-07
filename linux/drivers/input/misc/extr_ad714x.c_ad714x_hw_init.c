
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad714x_chip {unsigned short l_state; int (* read ) (struct ad714x_chip*,int,unsigned short*,int) ;int (* write ) (struct ad714x_chip*,int,int) ;TYPE_1__* hw; } ;
struct TYPE_2__ {int** stage_cfg_reg; int* sys_cfg_reg; } ;


 int AD714X_STAGECFG_REG ;
 int AD714X_STG_CAL_EN_REG ;
 int AD714X_SYSCFG_REG ;
 int STAGE_CFGREG_NUM ;
 int STAGE_NUM ;
 int STG_LOW_INT_STA_REG ;
 int SYS_CFGREG_NUM ;
 int stub1 (struct ad714x_chip*,unsigned short,int) ;
 int stub2 (struct ad714x_chip*,int,int) ;
 int stub3 (struct ad714x_chip*,int,unsigned short*,int) ;
 int stub4 (struct ad714x_chip*,int,int) ;
 int stub5 (struct ad714x_chip*,int,unsigned short*,int) ;

__attribute__((used)) static void ad714x_hw_init(struct ad714x_chip *ad714x)
{
 int i, j;
 unsigned short reg_base;
 unsigned short data;



 for (i = 0; i < STAGE_NUM; i++) {
  reg_base = AD714X_STAGECFG_REG + i * STAGE_CFGREG_NUM;
  for (j = 0; j < STAGE_CFGREG_NUM; j++)
   ad714x->write(ad714x, reg_base + j,
     ad714x->hw->stage_cfg_reg[i][j]);
 }

 for (i = 0; i < SYS_CFGREG_NUM; i++)
  ad714x->write(ad714x, AD714X_SYSCFG_REG + i,
   ad714x->hw->sys_cfg_reg[i]);
 for (i = 0; i < SYS_CFGREG_NUM; i++)
  ad714x->read(ad714x, AD714X_SYSCFG_REG + i, &data, 1);

 ad714x->write(ad714x, AD714X_STG_CAL_EN_REG, 0xFFF);


 ad714x->read(ad714x, STG_LOW_INT_STA_REG, &ad714x->l_state, 3);
}
