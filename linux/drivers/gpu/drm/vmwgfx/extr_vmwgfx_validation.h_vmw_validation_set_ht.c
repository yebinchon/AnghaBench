
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_context {struct drm_open_hash* ht; } ;
struct drm_open_hash {int dummy; } ;



__attribute__((used)) static inline void vmw_validation_set_ht(struct vmw_validation_context *ctx,
      struct drm_open_hash *ht)
{
 ctx->ht = ht;
}
