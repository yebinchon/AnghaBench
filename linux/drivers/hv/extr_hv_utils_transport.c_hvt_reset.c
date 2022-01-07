
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvutil_transport {int (* on_reset ) () ;scalar_t__ outmsg_len; int * outmsg; } ;


 int kfree (int *) ;
 int stub1 () ;

__attribute__((used)) static void hvt_reset(struct hvutil_transport *hvt)
{
 kfree(hvt->outmsg);
 hvt->outmsg = ((void*)0);
 hvt->outmsg_len = 0;
 if (hvt->on_reset)
  hvt->on_reset();
}
