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
struct drm_fb_helper {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_fb_helper*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_fb_helper*) ; 

__attribute__((used)) static void FUNC3(struct drm_fb_helper *fb_helper)
{
	FUNC1(fb_helper);
	FUNC0(&fb_helper->client);
	FUNC2(fb_helper);
}