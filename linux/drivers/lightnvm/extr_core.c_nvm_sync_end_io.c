
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvm_rq {struct completion* private; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void nvm_sync_end_io(struct nvm_rq *rqd)
{
 struct completion *waiting = rqd->private;

 complete(waiting);
}
