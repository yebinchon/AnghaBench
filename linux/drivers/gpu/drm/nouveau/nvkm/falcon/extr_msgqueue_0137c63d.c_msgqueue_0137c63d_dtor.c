
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue {int dummy; } ;


 int kfree (int ) ;
 int msgqueue_0137c63d (struct nvkm_msgqueue*) ;

__attribute__((used)) static void
msgqueue_0137c63d_dtor(struct nvkm_msgqueue *queue)
{
 kfree(msgqueue_0137c63d(queue));
}
