
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gf100_gr {int dummy; } ;


 int gf100_gr_fecs_discover_reglist_image_size (struct gf100_gr*,int *) ;
 int gf100_gr_fecs_set_reglist_bind_instance (struct gf100_gr*,int ) ;
 int gf100_gr_fecs_set_reglist_virtual_address (struct gf100_gr*,int ) ;

__attribute__((used)) static int
gf100_gr_fecs_elpg_bind(struct gf100_gr *gr)
{
 u32 size;
 int ret;

 ret = gf100_gr_fecs_discover_reglist_image_size(gr, &size);
 if (ret)
  return ret;






 ret = gf100_gr_fecs_set_reglist_bind_instance(gr, 0);
 if (ret)
  return ret;

 return gf100_gr_fecs_set_reglist_virtual_address(gr, 0);
}
