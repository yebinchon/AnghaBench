
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ sequence; } ;
union drm_wait_vblank {TYPE_1__ request; } ;


 int _DRM_VBLANK_EVENT ;
 int _DRM_VBLANK_NEXTONMISS ;
 int _DRM_VBLANK_RELATIVE ;
 int _DRM_VBLANK_TYPES_MASK ;

__attribute__((used)) static bool drm_wait_vblank_is_query(union drm_wait_vblank *vblwait)
{
 if (vblwait->request.sequence)
  return 0;

 return _DRM_VBLANK_RELATIVE ==
  (vblwait->request.type & (_DRM_VBLANK_TYPES_MASK |
       _DRM_VBLANK_EVENT |
       _DRM_VBLANK_NEXTONMISS));
}
