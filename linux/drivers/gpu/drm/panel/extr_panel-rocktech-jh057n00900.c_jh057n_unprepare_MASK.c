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
struct jh057n {int prepared; int /*<<< orphan*/  vcc; int /*<<< orphan*/  iovcc; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 struct jh057n* FUNC0 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct jh057n *ctx = FUNC0(panel);

	if (!ctx->prepared)
		return 0;

	FUNC1(ctx->iovcc);
	FUNC1(ctx->vcc);
	ctx->prepared = false;

	return 0;
}