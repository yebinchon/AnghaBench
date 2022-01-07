
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_queue {int qhandle; int q; } ;
struct spu_qreg {unsigned long type; struct spu_queue* queue; } ;


 int CWQ_NUM_ENTRIES ;
 long EINVAL ;
 int __pa (int ) ;
 unsigned long sun4v_ncs_qconf (unsigned long,int ,int ,int *) ;
 int sun4v_ncs_sethead_marker (int ,int ) ;

__attribute__((used)) static long spu_queue_register_workfn(void *arg)
{
 struct spu_qreg *qr = arg;
 struct spu_queue *p = qr->queue;
 unsigned long q_type = qr->type;
 unsigned long hv_ret;

 hv_ret = sun4v_ncs_qconf(q_type, __pa(p->q),
     CWQ_NUM_ENTRIES, &p->qhandle);
 if (!hv_ret)
  sun4v_ncs_sethead_marker(p->qhandle, 0);

 return hv_ret ? -EINVAL : 0;
}
