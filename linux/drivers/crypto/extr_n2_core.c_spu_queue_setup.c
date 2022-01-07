
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int * q; int q_type; } ;


 int ENOMEM ;
 int free_queue (int *,int ) ;
 int * new_queue (int ) ;
 int spu_queue_register (struct spu_queue*,int ) ;

__attribute__((used)) static int spu_queue_setup(struct spu_queue *p)
{
 int err;

 p->q = new_queue(p->q_type);
 if (!p->q)
  return -ENOMEM;

 err = spu_queue_register(p, p->q_type);
 if (err) {
  free_queue(p->q, p->q_type);
  p->q = ((void*)0);
 }

 return err;
}
