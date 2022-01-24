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
 int /*<<< orphan*/  FUNC1 (struct s6e63m0*) ; 
 int FUNC2 (struct s6e63m0*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct s6e63m0 *ctx = FUNC0(panel);
	int ret;

	if (!ctx->prepared)
		return 0;

	FUNC1(ctx);

	ret = FUNC2(ctx);
	if (ret < 0)
		return ret;

	ctx->prepared = false;

	return 0;
}