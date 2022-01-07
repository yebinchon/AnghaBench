
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_buffer_object {int dummy; } ;
struct TYPE_3__ {int vma_node; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct qxl_bo {TYPE_2__ tbo; } ;
struct file {int private_data; } ;


 int drm_vma_node_verify_access (int *,int ) ;
 struct qxl_bo* to_qxl_bo (struct ttm_buffer_object*) ;

__attribute__((used)) static int qxl_verify_access(struct ttm_buffer_object *bo, struct file *filp)
{
 struct qxl_bo *qbo = to_qxl_bo(bo);

 return drm_vma_node_verify_access(&qbo->tbo.base.vma_node,
       filp->private_data);
}
