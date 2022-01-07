
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qm_mailbox {int w0; scalar_t__ rsvd; int base_h; int base_l; int queue_num; } ;
struct hisi_qm {int mailbox_lock; TYPE_1__* pdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int QM_MB_BUSY_SHIFT ;
 int QM_MB_OP_SHIFT ;
 int dev_dbg (int *,char*,int ,int,unsigned long long) ;
 int dev_err (int *,char*) ;
 int lower_32_bits (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qm_mb_write (struct hisi_qm*,struct qm_mailbox*) ;
 int qm_wait_mb_ready (struct hisi_qm*) ;
 scalar_t__ unlikely (int ) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int qm_mb(struct hisi_qm *qm, u8 cmd, dma_addr_t dma_addr, u16 queue,
   bool op)
{
 struct qm_mailbox mailbox;
 int ret = 0;

 dev_dbg(&qm->pdev->dev, "QM mailbox request to q%u: %u-%llx\n",
  queue, cmd, (unsigned long long)dma_addr);

 mailbox.w0 = cmd |
       (op ? 0x1 << QM_MB_OP_SHIFT : 0) |
       (0x1 << QM_MB_BUSY_SHIFT);
 mailbox.queue_num = queue;
 mailbox.base_l = lower_32_bits(dma_addr);
 mailbox.base_h = upper_32_bits(dma_addr);
 mailbox.rsvd = 0;

 mutex_lock(&qm->mailbox_lock);

 if (unlikely(qm_wait_mb_ready(qm))) {
  ret = -EBUSY;
  dev_err(&qm->pdev->dev, "QM mailbox is busy to start!\n");
  goto busy_unlock;
 }

 qm_mb_write(qm, &mailbox);

 if (unlikely(qm_wait_mb_ready(qm))) {
  ret = -EBUSY;
  dev_err(&qm->pdev->dev, "QM mailbox operation timeout!\n");
  goto busy_unlock;
 }

busy_unlock:
 mutex_unlock(&qm->mailbox_lock);

 return ret;
}
