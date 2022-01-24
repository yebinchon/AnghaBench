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
struct ld9040 {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ld9040*) ; 
 int /*<<< orphan*/  FUNC1 (struct ld9040*) ; 
 int FUNC2 (struct ld9040*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_panel*) ; 
 struct ld9040* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct ld9040 *ctx = FUNC4(panel);
	int ret;

	ret = FUNC2(ctx);
	if (ret < 0)
		return ret;

	FUNC1(ctx);

	ret = FUNC0(ctx);

	if (ret < 0)
		FUNC3(panel);

	return ret;
}