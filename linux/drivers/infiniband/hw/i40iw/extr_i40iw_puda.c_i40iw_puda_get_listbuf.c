
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {scalar_t__ next; } ;
struct i40iw_puda_buf {int list; } ;


 int list_del (struct list_head*) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static struct i40iw_puda_buf *i40iw_puda_get_listbuf(struct list_head *list)
{
 struct i40iw_puda_buf *buf = ((void*)0);

 if (!list_empty(list)) {
  buf = (struct i40iw_puda_buf *)list->next;
  list_del((struct list_head *)&buf->list);
 }
 return buf;
}
