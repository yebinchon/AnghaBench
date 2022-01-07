
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_stdu_update_gb_image {int dummy; } ;
struct vmw_stdu_update {int dummy; } ;
struct vmw_du_update_plane {int dummy; } ;



__attribute__((used)) static uint32_t vmw_stdu_bo_fifo_size_cpu(struct vmw_du_update_plane *update,
       uint32_t num_hits)
{
 return sizeof(struct vmw_stdu_update_gb_image) +
  sizeof(struct vmw_stdu_update);
}
