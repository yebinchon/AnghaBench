
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm8333 {TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LM8333_ERROR_FIFOOVR ;
 int LM8333_ERROR_IRQ ;
 int LM8333_ERROR_KEYOVR ;
 int LM8333_FIFO_READ ;
 int LM8333_FIFO_TRANSFER_SIZE ;
 int LM8333_KEYPAD_IRQ ;
 int LM8333_READ_ERROR ;
 int LM8333_READ_INT ;
 int dev_err (int *,char*,int) ;
 int lm8333_key_handler (struct lm8333*) ;
 int lm8333_read8 (struct lm8333*,int ) ;
 int lm8333_read_block (struct lm8333*,int ,int,int*) ;

__attribute__((used)) static irqreturn_t lm8333_irq_thread(int irq, void *data)
{
 struct lm8333 *lm8333 = data;
 u8 status = lm8333_read8(lm8333, LM8333_READ_INT);

 if (!status)
  return IRQ_NONE;

 if (status & LM8333_ERROR_IRQ) {
  u8 err = lm8333_read8(lm8333, LM8333_READ_ERROR);

  if (err & (LM8333_ERROR_KEYOVR | LM8333_ERROR_FIFOOVR)) {
   u8 dummy[LM8333_FIFO_TRANSFER_SIZE];

   lm8333_read_block(lm8333, LM8333_FIFO_READ,
     LM8333_FIFO_TRANSFER_SIZE, dummy);
  }
  dev_err(&lm8333->client->dev, "Got error %02x\n", err);
 }

 if (status & LM8333_KEYPAD_IRQ)
  lm8333_key_handler(lm8333);

 return IRQ_HANDLED;
}
