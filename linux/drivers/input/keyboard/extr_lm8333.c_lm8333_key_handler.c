
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm8333 {int * keycodes; TYPE_1__* client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EV_MSC ;
 int LM8333_FIFO_READ ;
 int LM8333_FIFO_TRANSFER_SIZE ;
 int MSC_SCAN ;
 int dev_err (int *,char*,int) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int lm8333_read_block (struct lm8333*,int ,int,int*) ;

__attribute__((used)) static void lm8333_key_handler(struct lm8333 *lm8333)
{
 struct input_dev *input = lm8333->input;
 u8 keys[LM8333_FIFO_TRANSFER_SIZE];
 u8 code, pressed;
 int i, ret;

 ret = lm8333_read_block(lm8333, LM8333_FIFO_READ,
    LM8333_FIFO_TRANSFER_SIZE, keys);
 if (ret != LM8333_FIFO_TRANSFER_SIZE) {
  dev_err(&lm8333->client->dev,
   "Error %d while reading FIFO\n", ret);
  return;
 }

 for (i = 0; i < LM8333_FIFO_TRANSFER_SIZE && keys[i]; i++) {
  pressed = keys[i] & 0x80;
  code = keys[i] & 0x7f;

  input_event(input, EV_MSC, MSC_SCAN, code);
  input_report_key(input, lm8333->keycodes[code], pressed);
 }

 input_sync(input);
}
