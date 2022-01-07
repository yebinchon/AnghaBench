
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending_queue {size_t rear; struct pending_entry* head; } ;
struct pending_entry {int busy; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pending_entry *get_free_pending_entry(struct pending_queue *q,
          int qlen)
{
 struct pending_entry *ent = ((void*)0);

 ent = &q->head[q->rear];
 if (unlikely(ent->busy)) {
  ent = ((void*)0);
  goto no_free_entry;
 }

 q->rear++;
 if (unlikely(q->rear == qlen))
  q->rear = 0;

no_free_entry:
 return ent;
}
