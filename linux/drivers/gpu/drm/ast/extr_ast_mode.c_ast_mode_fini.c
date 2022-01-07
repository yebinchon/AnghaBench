
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int ast_cursor_fini (struct drm_device*) ;

void ast_mode_fini(struct drm_device *dev)
{
 ast_cursor_fini(dev);
}
