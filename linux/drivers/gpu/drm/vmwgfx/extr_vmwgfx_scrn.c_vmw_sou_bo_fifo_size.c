
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_kms_sou_define_gmrfb {int dummy; } ;
struct vmw_kms_sou_bo_blit {int dummy; } ;
struct vmw_du_update_plane {int dummy; } ;



__attribute__((used)) static uint32_t vmw_sou_bo_fifo_size(struct vmw_du_update_plane *update,
         uint32_t num_hits)
{
 return sizeof(struct vmw_kms_sou_define_gmrfb) +
  sizeof(struct vmw_kms_sou_bo_blit) * num_hits;
}
