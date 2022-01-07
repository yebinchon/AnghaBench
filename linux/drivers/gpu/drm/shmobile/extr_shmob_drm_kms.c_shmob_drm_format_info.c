
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct shmob_drm_format_info {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (struct shmob_drm_format_info const*) ;
 struct shmob_drm_format_info const* shmob_drm_format_infos ;

const struct shmob_drm_format_info *shmob_drm_format_info(u32 fourcc)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(shmob_drm_format_infos); ++i) {
  if (shmob_drm_format_infos[i].fourcc == fourcc)
   return &shmob_drm_format_infos[i];
 }

 return ((void*)0);
}
