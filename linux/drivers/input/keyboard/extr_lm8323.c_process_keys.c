
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct lm8323_chip {int keys_down; unsigned short* keymap; int active_time; int idev; scalar_t__ kp_enabled; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EV_MSC ;
 int LM8323_CMD_READ_FIFO ;
 int LM8323_FIFO_LEN ;
 int MSC_SCAN ;
 int dev_err (int *,char*) ;
 int dev_vdbg (int *,char*,size_t,char*) ;
 int input_event (int ,int ,int ,size_t) ;
 int input_report_key (int ,unsigned short,int) ;
 int input_sync (int ) ;
 int lm8323_ispress (size_t) ;
 int lm8323_read (struct lm8323_chip*,int ,size_t*,int ) ;
 int lm8323_set_active_time (struct lm8323_chip*,int ) ;
 size_t lm8323_whichkey (size_t) ;

__attribute__((used)) static void process_keys(struct lm8323_chip *lm)
{
 u8 event;
 u8 key_fifo[LM8323_FIFO_LEN + 1];
 int old_keys_down = lm->keys_down;
 int ret;
 int i = 0;





 ret = lm8323_read(lm, LM8323_CMD_READ_FIFO, key_fifo, LM8323_FIFO_LEN);

 if (ret < 0) {
  dev_err(&lm->client->dev, "Failed reading fifo \n");
  return;
 }
 key_fifo[ret] = 0;

 while ((event = key_fifo[i++])) {
  u8 key = lm8323_whichkey(event);
  int isdown = lm8323_ispress(event);
  unsigned short keycode = lm->keymap[key];

  dev_vdbg(&lm->client->dev, "key 0x%02x %s\n",
    key, isdown ? "down" : "up");

  if (lm->kp_enabled) {
   input_event(lm->idev, EV_MSC, MSC_SCAN, key);
   input_report_key(lm->idev, keycode, isdown);
   input_sync(lm->idev);
  }

  if (isdown)
   lm->keys_down++;
  else
   lm->keys_down--;
 }






 if (!old_keys_down && lm->keys_down)
  lm8323_set_active_time(lm, 0);
 if (old_keys_down && !lm->keys_down)
  lm8323_set_active_time(lm, lm->active_time);
}
