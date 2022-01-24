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
struct tc358764 {int /*<<< orphan*/  panel; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct tc358764* FUNC0 (struct drm_connector*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector)
{
	struct tc358764 *ctx = FUNC0(connector);

	return FUNC1(ctx->panel);
}