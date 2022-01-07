
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int next; struct list_head* prev; } ;


 int WRITE_ONCE (int ,struct list_head*) ;

__attribute__((used)) static inline void __list_del_many(struct list_head *head,
       struct list_head *first)
{
 first->prev = head;
 WRITE_ONCE(head->next, first);
}
