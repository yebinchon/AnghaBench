
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int dummy; } ;


 int bcom_task_free (struct bcom_task*) ;

void
bcom_fec_tx_release(struct bcom_task *tsk)
{

 bcom_task_free(tsk);
}
