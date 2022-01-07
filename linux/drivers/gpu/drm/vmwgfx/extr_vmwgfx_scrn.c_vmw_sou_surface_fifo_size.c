
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_kms_sou_dirty_cmd {int dummy; } ;
struct vmw_du_update_plane {int dummy; } ;
typedef int SVGASignedRect ;



__attribute__((used)) static uint32_t vmw_sou_surface_fifo_size(struct vmw_du_update_plane *update,
       uint32_t num_hits)
{
 return sizeof(struct vmw_kms_sou_dirty_cmd) + sizeof(SVGASignedRect) *
  num_hits;
}
