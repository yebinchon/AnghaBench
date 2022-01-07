
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cptvf_wqe_info {struct cptvf_wqe* vq_wqe; } ;
struct cptvf_wqe {int qno; int cptvf; } ;


 int vq_post_process (int ,int ) ;

__attribute__((used)) static void vq_work_handler(unsigned long data)
{
 struct cptvf_wqe_info *cwqe_info = (struct cptvf_wqe_info *)data;
 struct cptvf_wqe *cwqe = &cwqe_info->vq_wqe[0];

 vq_post_process(cwqe->cptvf, cwqe->qno);
}
