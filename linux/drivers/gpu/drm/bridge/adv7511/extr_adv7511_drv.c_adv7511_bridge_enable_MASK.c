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
struct drm_bridge {int dummy; } ;
struct adv7511 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adv7511*) ; 
 struct adv7511* FUNC1 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC2(struct drm_bridge *bridge)
{
	struct adv7511 *adv = FUNC1(bridge);

	FUNC0(adv);
}