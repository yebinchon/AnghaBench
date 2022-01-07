
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct drm_display_mode {struct list_head head; } ;



void drm_mode_copy(struct drm_display_mode *dst, const struct drm_display_mode *src)
{
 struct list_head head = dst->head;

 *dst = *src;
 dst->head = head;
}
