
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {int dummy; } ;
struct ttm_validate_buffer {int dummy; } ;


 scalar_t__ unlikely (int) ;
 int vmw_legacy_srf_dma (struct vmw_resource*,struct ttm_validate_buffer*,int) ;

__attribute__((used)) static int vmw_legacy_srf_unbind(struct vmw_resource *res,
     bool readback,
     struct ttm_validate_buffer *val_buf)
{
 if (unlikely(readback))
  return vmw_legacy_srf_dma(res, val_buf, 0);
 return 0;
}
