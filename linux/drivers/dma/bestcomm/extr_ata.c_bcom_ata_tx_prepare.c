
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcom_task {int tasknum; } ;
struct bcom_ata_inc {int incr_src; scalar_t__ incr_dst; int incr_bytes; } ;
typedef int s16 ;


 int BCOM_INITIATOR_ATA_TX ;
 int bcom_set_initiator (int ,int ) ;
 scalar_t__ bcom_task_inc (int ) ;

void bcom_ata_tx_prepare(struct bcom_task *tsk)
{
 struct bcom_ata_inc *inc;

 inc = (struct bcom_ata_inc *) bcom_task_inc(tsk->tasknum);

 inc->incr_bytes = -(s16)sizeof(u32);
 inc->incr_src = sizeof(u32);
 inc->incr_dst = 0;

 bcom_set_initiator(tsk->tasknum, BCOM_INITIATOR_ATA_TX);
}
