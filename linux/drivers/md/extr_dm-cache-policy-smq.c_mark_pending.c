
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int dummy; } ;
struct entry {int sentinel; int pending_work; int allocated; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void mark_pending(struct smq_policy *mq, struct entry *e)
{
 BUG_ON(e->sentinel);
 BUG_ON(!e->allocated);
 BUG_ON(e->pending_work);
 e->pending_work = 1;
}
