
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qce_device {int result; int done_tasklet; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void qce_async_request_done(struct qce_device *qce, int ret)
{
 qce->result = ret;
 tasklet_schedule(&qce->done_tasklet);
}
