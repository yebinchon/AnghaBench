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
struct drm_rect {void* y2; void* x2; void* y1; void* x1; } ;

/* Variables and functions */
 int FUNC0 (struct drm_rect*) ; 
 void* FUNC1 (void*,void*) ; 
 void* FUNC2 (void*,void*) ; 

bool FUNC3(struct drm_rect *r1, const struct drm_rect *r2)
{
	r1->x1 = FUNC1(r1->x1, r2->x1);
	r1->y1 = FUNC1(r1->y1, r2->y1);
	r1->x2 = FUNC2(r1->x2, r2->x2);
	r1->y2 = FUNC2(r1->y2, r2->y2);

	return FUNC0(r1);
}