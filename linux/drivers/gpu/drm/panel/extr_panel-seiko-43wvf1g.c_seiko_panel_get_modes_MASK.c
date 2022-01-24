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
struct seiko_panel {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct seiko_panel*) ; 
 struct seiko_panel* FUNC1 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC2(struct drm_panel *panel)
{
	struct seiko_panel *p = FUNC1(panel);

	/* add hard-coded panel modes */
	return FUNC0(p);
}