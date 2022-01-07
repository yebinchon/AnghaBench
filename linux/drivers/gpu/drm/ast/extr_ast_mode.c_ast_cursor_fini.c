
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_vram_object {int dummy; } ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int cursor_cache; } ;


 int drm_gem_object_put_unlocked (int ) ;
 int drm_gem_vram_kunmap (struct drm_gem_vram_object*) ;
 struct drm_gem_vram_object* drm_gem_vram_of_gem (int ) ;
 int drm_gem_vram_unpin (struct drm_gem_vram_object*) ;

__attribute__((used)) static void ast_cursor_fini(struct drm_device *dev)
{
 struct ast_private *ast = dev->dev_private;
 struct drm_gem_vram_object *gbo =
  drm_gem_vram_of_gem(ast->cursor_cache);
 drm_gem_vram_kunmap(gbo);
 drm_gem_vram_unpin(gbo);
 drm_gem_object_put_unlocked(ast->cursor_cache);
}
