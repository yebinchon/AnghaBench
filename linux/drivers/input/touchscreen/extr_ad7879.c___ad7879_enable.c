
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7879 {int irq; int cmd_crtl1; int cmd_crtl3; int cmd_crtl2; } ;


 int AD7879_REG_CTRL1 ;
 int AD7879_REG_CTRL2 ;
 int AD7879_REG_CTRL3 ;
 int ad7879_write (struct ad7879*,int ,int ) ;
 int enable_irq (int ) ;

__attribute__((used)) static void __ad7879_enable(struct ad7879 *ts)
{
 ad7879_write(ts, AD7879_REG_CTRL2, ts->cmd_crtl2);
 ad7879_write(ts, AD7879_REG_CTRL3, ts->cmd_crtl3);
 ad7879_write(ts, AD7879_REG_CTRL1, ts->cmd_crtl1);

 enable_irq(ts->irq);
}
