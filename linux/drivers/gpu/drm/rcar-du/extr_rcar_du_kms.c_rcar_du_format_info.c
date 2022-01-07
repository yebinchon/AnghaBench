
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_format_info {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct rcar_du_format_info const*) ;
 struct rcar_du_format_info const* rcar_du_format_infos ;

const struct rcar_du_format_info *rcar_du_format_info(u32 fourcc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(rcar_du_format_infos); ++i) {
  if (rcar_du_format_infos[i].fourcc == fourcc)
   return &rcar_du_format_infos[i];
 }

 return ((void*)0);
}
