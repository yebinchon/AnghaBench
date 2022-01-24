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
struct s6e63m0 {int prepared; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 struct s6e63m0* FUNC0 (struct drm_panel*) ; 
 int FUNC1 (struct s6e63m0*) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e63m0*) ; 
 int FUNC3 (struct s6e63m0*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct s6e63m0 *ctx = FUNC0(panel);
	int ret;

	if (ctx->prepared)
		return 0;

	ret = FUNC3(ctx);
	if (ret < 0)
		return ret;

	FUNC2(ctx);

	ret = FUNC1(ctx);

	if (ret < 0)
		FUNC4(panel);

	ctx->prepared = true;

	return ret;
}