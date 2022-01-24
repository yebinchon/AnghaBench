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
struct s6e8aa0 {int error; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 struct s6e8aa0* FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct s6e8aa0 *ctx = FUNC0(panel);
	int ret;

	ret = FUNC1(ctx);
	if (ret < 0)
		return ret;

	FUNC2(ctx);
	ret = ctx->error;

	if (ret < 0)
		FUNC3(panel);

	return ret;
}