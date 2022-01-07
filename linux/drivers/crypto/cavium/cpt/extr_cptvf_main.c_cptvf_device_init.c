
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_6__ {TYPE_2__* queue; } ;
struct cpt_vf {int flags; TYPE_3__ cqinfo; } ;
struct TYPE_5__ {TYPE_1__* qhead; } ;
struct TYPE_4__ {scalar_t__ dma_addr; } ;


 int CPT_FLAG_DEVICE_READY ;
 int CPT_TIMER_THOLD ;
 int cptvf_write_vq_ctl (struct cpt_vf*,int) ;
 int cptvf_write_vq_done_numwait (struct cpt_vf*,int) ;
 int cptvf_write_vq_done_timewait (struct cpt_vf*,int ) ;
 int cptvf_write_vq_doorbell (struct cpt_vf*,int ) ;
 int cptvf_write_vq_inprog (struct cpt_vf*,int ) ;
 int cptvf_write_vq_saddr (struct cpt_vf*,scalar_t__) ;

__attribute__((used)) static void cptvf_device_init(struct cpt_vf *cptvf)
{
 u64 base_addr = 0;


 cptvf_write_vq_ctl(cptvf, 0);

 cptvf_write_vq_doorbell(cptvf, 0);

 cptvf_write_vq_inprog(cptvf, 0);


 base_addr = (u64)(cptvf->cqinfo.queue[0].qhead->dma_addr);
 cptvf_write_vq_saddr(cptvf, base_addr);

 cptvf_write_vq_done_timewait(cptvf, CPT_TIMER_THOLD);
 cptvf_write_vq_done_numwait(cptvf, 1);

 cptvf_write_vq_ctl(cptvf, 1);

 cptvf->flags |= CPT_FLAG_DEVICE_READY;
}
