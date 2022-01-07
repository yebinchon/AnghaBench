
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mtk_i2c {int irq_stat; int ignore_restart_irq; int msg_complete; scalar_t__ auto_restart; } ;
typedef int irqreturn_t ;


 int I2C_RS_MUL_CNFG ;
 int I2C_RS_MUL_TRIG ;
 int I2C_RS_TRANSFER ;
 int I2C_TRANSAC_COMP ;
 int I2C_TRANSAC_START ;
 int IRQ_HANDLED ;
 int OFFSET_INTR_STAT ;
 int OFFSET_START ;
 int complete (int *) ;
 int mtk_i2c_readw (struct mtk_i2c*,int ) ;
 int mtk_i2c_writew (struct mtk_i2c*,int,int ) ;

__attribute__((used)) static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
{
 struct mtk_i2c *i2c = dev_id;
 u16 restart_flag = 0;
 u16 intr_stat;

 if (i2c->auto_restart)
  restart_flag = I2C_RS_TRANSFER;

 intr_stat = mtk_i2c_readw(i2c, OFFSET_INTR_STAT);
 mtk_i2c_writew(i2c, intr_stat, OFFSET_INTR_STAT);






 i2c->irq_stat |= intr_stat;

 if (i2c->ignore_restart_irq && (i2c->irq_stat & restart_flag)) {
  i2c->ignore_restart_irq = 0;
  i2c->irq_stat = 0;
  mtk_i2c_writew(i2c, I2C_RS_MUL_CNFG | I2C_RS_MUL_TRIG |
        I2C_TRANSAC_START, OFFSET_START);
 } else {
  if (i2c->irq_stat & (I2C_TRANSAC_COMP | restart_flag))
   complete(&i2c->msg_complete);
 }

 return IRQ_HANDLED;
}
