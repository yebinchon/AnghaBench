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
struct sii8620 {int dummy; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct sii8620* FUNC0 (struct drm_bridge*) ; 
 int FUNC1 (struct sii8620*) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*) ; 

__attribute__((used)) static int FUNC3(struct drm_bridge *bridge)
{
	struct sii8620 *ctx = FUNC0(bridge);

	FUNC2(ctx);

	return FUNC1(ctx);
}