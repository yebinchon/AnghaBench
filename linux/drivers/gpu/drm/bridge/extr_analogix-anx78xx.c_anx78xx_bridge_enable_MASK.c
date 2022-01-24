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
struct anx78xx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct anx78xx*) ; 
 int FUNC2 (struct anx78xx*) ; 
 struct anx78xx* FUNC3 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct anx78xx *anx78xx = FUNC3(bridge);
	int err;

	err = FUNC2(anx78xx);
	if (err) {
		FUNC0("Failed to initialize: %d\n", err);
		return;
	}

	err = FUNC1(anx78xx);
	if (err)
		FUNC0("Failed to set HPD: %d\n", err);
}