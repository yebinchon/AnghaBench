
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {int tasknum; } ;


 int bcom_enable_task (int ) ;

void
bcom_enable(struct bcom_task *tsk)
{
 bcom_enable_task(tsk->tasknum);
}
