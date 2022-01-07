
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct brcm_message {int error; } ;
struct TYPE_4__ {int * mbox; int mb_send_fail; int mb_no_spc; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int ENOBUFS ;
 int MBOX_SLEEP_MAX ;
 int MBOX_SLEEP_MIN ;
 int SPU_MB_RETRY_MAX ;
 int atomic_inc (int *) ;
 int dev_err (struct device*,char*,int) ;
 TYPE_2__ iproc_priv ;
 int mbox_client_txdone (int ,int) ;
 int mbox_send_message (int ,struct brcm_message*) ;
 scalar_t__ unlikely (int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int mailbox_send_message(struct brcm_message *mssg, u32 flags,
    u8 chan_idx)
{
 int err;
 int retry_cnt = 0;
 struct device *dev = &(iproc_priv.pdev->dev);

 err = mbox_send_message(iproc_priv.mbox[chan_idx], mssg);
 if (flags & CRYPTO_TFM_REQ_MAY_SLEEP) {
  while ((err == -ENOBUFS) && (retry_cnt < SPU_MB_RETRY_MAX)) {




   retry_cnt++;
   usleep_range(MBOX_SLEEP_MIN, MBOX_SLEEP_MAX);
   err = mbox_send_message(iproc_priv.mbox[chan_idx],
      mssg);
   atomic_inc(&iproc_priv.mb_no_spc);
  }
 }
 if (err < 0) {
  atomic_inc(&iproc_priv.mb_send_fail);
  return err;
 }


 err = mssg->error;
 if (unlikely(err < 0)) {
  dev_err(dev, "message error %d", err);

 }


 mbox_client_txdone(iproc_priv.mbox[chan_idx], err);
 return err;
}
