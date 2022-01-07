
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltdc_device {struct fps_info* plane_fpsi; } ;
struct fps_info {int counter; int last_timestamp; } ;
struct drm_printer {int dummy; } ;
struct drm_plane_state {struct drm_plane* plane; } ;
struct drm_plane {size_t index; } ;
typedef int ktime_t ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int drm_printf (struct drm_printer*,char*,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int ktime_to_ms (int ) ;
 struct ltdc_device* plane_to_ltdc (struct drm_plane*) ;

__attribute__((used)) static void ltdc_plane_atomic_print_state(struct drm_printer *p,
       const struct drm_plane_state *state)
{
 struct drm_plane *plane = state->plane;
 struct ltdc_device *ldev = plane_to_ltdc(plane);
 struct fps_info *fpsi = &ldev->plane_fpsi[plane->index];
 int ms_since_last;
 ktime_t now;

 now = ktime_get();
 ms_since_last = ktime_to_ms(ktime_sub(now, fpsi->last_timestamp));

 drm_printf(p, "\tuser_updates=%dfps\n",
     DIV_ROUND_CLOSEST(fpsi->counter * 1000, ms_since_last));

 fpsi->last_timestamp = now;
 fpsi->counter = 0;
}
