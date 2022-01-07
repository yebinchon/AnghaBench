
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cptvf_wqe_info {struct cptvf_wqe* vq_wqe; } ;
struct cptvf_wqe {int dummy; } ;
struct cpt_vf {int nr_queues; scalar_t__ wqe_info; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct cptvf_wqe *get_cptvf_vq_wqe(struct cpt_vf *cptvf,
       int qno)
{
 struct cptvf_wqe_info *nwqe_info;

 if (unlikely(qno >= cptvf->nr_queues))
  return ((void*)0);
 nwqe_info = (struct cptvf_wqe_info *)cptvf->wqe_info;

 return &nwqe_info->vq_wqe[qno];
}
