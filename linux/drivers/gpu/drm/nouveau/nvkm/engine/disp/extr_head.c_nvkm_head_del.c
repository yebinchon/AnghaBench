
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_head {int head; } ;


 int HEAD_DBG (struct nvkm_head*,char*) ;
 int kfree (struct nvkm_head*) ;
 int list_del (int *) ;

void
nvkm_head_del(struct nvkm_head **phead)
{
 struct nvkm_head *head = *phead;
 if (head) {
  HEAD_DBG(head, "dtor");
  list_del(&head->head);
  kfree(*phead);
  *phead = ((void*)0);
 }
}
