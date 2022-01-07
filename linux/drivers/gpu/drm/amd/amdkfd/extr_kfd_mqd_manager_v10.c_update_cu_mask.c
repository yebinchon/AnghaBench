
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct v10_compute_mqd {void* compute_static_thread_mgmt_se3; void* compute_static_thread_mgmt_se2; void* compute_static_thread_mgmt_se1; void* compute_static_thread_mgmt_se0; } ;
struct queue_properties {scalar_t__ cu_mask_count; int cu_mask; } ;
struct mqd_manager {int dummy; } ;


 struct v10_compute_mqd* get_mqd (void*) ;
 int mqd_symmetrically_map_cu_mask (struct mqd_manager*,int ,scalar_t__,void**) ;
 int pr_debug (char*,void*,void*,void*,void*) ;

__attribute__((used)) static void update_cu_mask(struct mqd_manager *mm, void *mqd,
      struct queue_properties *q)
{
 struct v10_compute_mqd *m;
 uint32_t se_mask[4] = {0};

 if (q->cu_mask_count == 0)
  return;

 mqd_symmetrically_map_cu_mask(mm,
  q->cu_mask, q->cu_mask_count, se_mask);

 m = get_mqd(mqd);
 m->compute_static_thread_mgmt_se0 = se_mask[0];
 m->compute_static_thread_mgmt_se1 = se_mask[1];
 m->compute_static_thread_mgmt_se2 = se_mask[2];
 m->compute_static_thread_mgmt_se3 = se_mask[3];

 pr_debug("update cu mask to %#x %#x %#x %#x\n",
  m->compute_static_thread_mgmt_se0,
  m->compute_static_thread_mgmt_se1,
  m->compute_static_thread_mgmt_se2,
  m->compute_static_thread_mgmt_se3);
}
