
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct icp_qat_uclo_aedata {unsigned int slice_num; TYPE_1__* ae_slices; } ;
struct TYPE_2__ {int * page; int * region; } ;


 int EINVAL ;
 int kfree (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int qat_uclo_free_ae_data(struct icp_qat_uclo_aedata *ae_data)
{
 unsigned int i;

 if (!ae_data) {
  pr_err("QAT: bad argument, ae_data is NULL\n ");
  return -EINVAL;
 }

 for (i = 0; i < ae_data->slice_num; i++) {
  kfree(ae_data->ae_slices[i].region);
  ae_data->ae_slices[i].region = ((void*)0);
  kfree(ae_data->ae_slices[i].page);
  ae_data->ae_slices[i].page = ((void*)0);
 }
 return 0;
}
