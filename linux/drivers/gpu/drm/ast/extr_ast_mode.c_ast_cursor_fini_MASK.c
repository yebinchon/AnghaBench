#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_gem_vram_object {int dummy; } ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int /*<<< orphan*/  cursor_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_vram_object*) ; 
 struct drm_gem_vram_object* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_vram_object*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;
	struct drm_gem_vram_object *gbo =
		FUNC2(ast->cursor_cache);
	FUNC1(gbo);
	FUNC3(gbo);
	FUNC0(ast->cursor_cache);
}