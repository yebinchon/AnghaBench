
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int dummy; } ;
struct entry {int pending_work; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void clear_pending(struct smq_policy *mq, struct entry *e)
{
 BUG_ON(!e->pending_work);
 e->pending_work = 0;
}
