
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int q_type; int q; int qhandle; } ;


 int free_queue (int ,int ) ;
 unsigned long sun4v_ncs_qconf (int ,int ,int ,int *) ;

__attribute__((used)) static void spu_queue_destroy(struct spu_queue *p)
{
 unsigned long hv_ret;

 if (!p->q)
  return;

 hv_ret = sun4v_ncs_qconf(p->q_type, p->qhandle, 0, &p->qhandle);

 if (!hv_ret)
  free_queue(p->q, p->q_type);
}
