
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int armada_drm_crtc_cursor_update (void*,int) ;

__attribute__((used)) static void cursor_update(void *data)
{
 armada_drm_crtc_cursor_update(data, 1);
}
