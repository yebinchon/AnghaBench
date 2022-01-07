
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_surface_define {int dummy; } ;
struct vmw_surface {int num_sizes; } ;
typedef int SVGA3dSize ;



__attribute__((used)) static inline uint32_t vmw_surface_define_size(const struct vmw_surface *srf)
{
 return sizeof(struct vmw_surface_define) + srf->num_sizes *
  sizeof(SVGA3dSize);
}
