
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad714x_chip {int (* write ) (struct ad714x_chip*,int ,unsigned short) ;int (* read ) (struct ad714x_chip*,int ,unsigned short*,int) ;} ;


 int STG_COM_INT_EN_REG ;
 int STG_HIGH_INT_EN_REG ;
 int stub1 (struct ad714x_chip*,int ,unsigned short*,int) ;
 int stub2 (struct ad714x_chip*,int ,unsigned short) ;
 int stub3 (struct ad714x_chip*,int ,unsigned short*,int) ;
 int stub4 (struct ad714x_chip*,int ,unsigned short) ;

__attribute__((used)) static void ad714x_use_thr_int(struct ad714x_chip *ad714x,
    int start_stage, int end_stage)
{
 unsigned short data;
 unsigned short mask;

 mask = ((1 << (end_stage + 1)) - 1) - ((1 << start_stage) - 1);

 ad714x->read(ad714x, STG_COM_INT_EN_REG, &data, 1);
 data &= ~(1 << end_stage);
 ad714x->write(ad714x, STG_COM_INT_EN_REG, data);

 ad714x->read(ad714x, STG_HIGH_INT_EN_REG, &data, 1);
 data |= mask;
 ad714x->write(ad714x, STG_HIGH_INT_EN_REG, data);
}
