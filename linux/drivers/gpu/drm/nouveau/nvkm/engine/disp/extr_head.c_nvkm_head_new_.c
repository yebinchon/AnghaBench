
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_head_func {int dummy; } ;
struct nvkm_head {int id; int head; struct nvkm_disp* disp; struct nvkm_head_func const* func; } ;
struct nvkm_disp {int head; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HEAD_DBG (struct nvkm_head*,char*) ;
 struct nvkm_head* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

int
nvkm_head_new_(const struct nvkm_head_func *func,
        struct nvkm_disp *disp, int id)
{
 struct nvkm_head *head;
 if (!(head = kzalloc(sizeof(*head), GFP_KERNEL)))
  return -ENOMEM;
 head->func = func;
 head->disp = disp;
 head->id = id;
 list_add_tail(&head->head, &disp->head);
 HEAD_DBG(head, "ctor");
 return 0;
}
