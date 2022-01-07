
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sahara_dev {int dma_completion; int error; } ;
typedef int irqreturn_t ;


 int EINVAL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SAHARA_CMD_CLEAR_ERR ;
 int SAHARA_CMD_CLEAR_INT ;
 int SAHARA_REG_CMD ;
 int SAHARA_REG_ERRSTATUS ;
 int SAHARA_REG_STATUS ;
 scalar_t__ SAHARA_STATE_BUSY ;
 scalar_t__ SAHARA_STATE_COMPLETE ;
 scalar_t__ SAHARA_STATUS_GET_STATE (unsigned int) ;
 int complete (int *) ;
 int sahara_decode_error (struct sahara_dev*,unsigned int) ;
 int sahara_decode_status (struct sahara_dev*,unsigned int) ;
 unsigned int sahara_read (struct sahara_dev*,int ) ;
 int sahara_write (struct sahara_dev*,int,int ) ;

__attribute__((used)) static irqreturn_t sahara_irq_handler(int irq, void *data)
{
 struct sahara_dev *dev = (struct sahara_dev *)data;
 unsigned int stat = sahara_read(dev, SAHARA_REG_STATUS);
 unsigned int err = sahara_read(dev, SAHARA_REG_ERRSTATUS);

 sahara_write(dev, SAHARA_CMD_CLEAR_INT | SAHARA_CMD_CLEAR_ERR,
       SAHARA_REG_CMD);

 sahara_decode_status(dev, stat);

 if (SAHARA_STATUS_GET_STATE(stat) == SAHARA_STATE_BUSY) {
  return IRQ_NONE;
 } else if (SAHARA_STATUS_GET_STATE(stat) == SAHARA_STATE_COMPLETE) {
  dev->error = 0;
 } else {
  sahara_decode_error(dev, err);
  dev->error = -EINVAL;
 }

 complete(&dev->dma_completion);

 return IRQ_HANDLED;
}
