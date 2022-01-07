
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_device {int max_mr; int allocated_mrs; void* used_mrs; int max_cq; int allocated_cqs; void* used_cqs; int max_qp; int allocated_qps; void* used_qps; int max_pd; int allocated_pds; void* used_pds; } ;


 void* find_next_zero_bit (int ,int ,int ) ;

__attribute__((used)) static void i40iw_get_used_rsrc(struct i40iw_device *iwdev)
{
 iwdev->used_pds = find_next_zero_bit(iwdev->allocated_pds, iwdev->max_pd, 0);
 iwdev->used_qps = find_next_zero_bit(iwdev->allocated_qps, iwdev->max_qp, 0);
 iwdev->used_cqs = find_next_zero_bit(iwdev->allocated_cqs, iwdev->max_cq, 0);
 iwdev->used_mrs = find_next_zero_bit(iwdev->allocated_mrs, iwdev->max_mr, 0);
}
