
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int backup_dirty; } ;
struct ttm_validate_buffer {int dummy; } ;


 int vmw_legacy_srf_dma (struct vmw_resource*,struct ttm_validate_buffer*,int) ;

__attribute__((used)) static int vmw_legacy_srf_bind(struct vmw_resource *res,
          struct ttm_validate_buffer *val_buf)
{
 if (!res->backup_dirty)
  return 0;

 return vmw_legacy_srf_dma(res, val_buf, 1);
}
