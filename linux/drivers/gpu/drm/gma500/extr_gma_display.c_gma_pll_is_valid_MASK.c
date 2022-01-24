#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_15__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_14__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_13__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_12__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_11__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_10__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_9__ {scalar_t__ min; scalar_t__ max; } ;
struct gma_limit_t {TYPE_8__ dot; TYPE_7__ vco; TYPE_6__ n; TYPE_5__ m; TYPE_4__ m1; TYPE_3__ m2; TYPE_2__ p; TYPE_1__ p1; } ;
struct gma_clock_t {scalar_t__ p1; scalar_t__ p; scalar_t__ m2; scalar_t__ m1; scalar_t__ m; scalar_t__ n; scalar_t__ vco; scalar_t__ dot; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

bool FUNC1(struct drm_crtc *crtc,
		      const struct gma_limit_t *limit,
		      struct gma_clock_t *clock)
{
	if (clock->p1 < limit->p1.min || limit->p1.max < clock->p1)
		FUNC0("p1 out of range");
	if (clock->p < limit->p.min || limit->p.max < clock->p)
		FUNC0("p out of range");
	if (clock->m2 < limit->m2.min || limit->m2.max < clock->m2)
		FUNC0("m2 out of range");
	if (clock->m1 < limit->m1.min || limit->m1.max < clock->m1)
		FUNC0("m1 out of range");
	/* On CDV m1 is always 0 */
	if (clock->m1 <= clock->m2 && clock->m1 != 0)
		FUNC0("m1 <= m2 && m1 != 0");
	if (clock->m < limit->m.min || limit->m.max < clock->m)
		FUNC0("m out of range");
	if (clock->n < limit->n.min || limit->n.max < clock->n)
		FUNC0("n out of range");
	if (clock->vco < limit->vco.min || limit->vco.max < clock->vco)
		FUNC0("vco out of range");
	/* XXX: We may need to be checking "Dot clock"
	 * depending on the multiplier, connector, etc.,
	 * rather than just a single range.
	 */
	if (clock->dot < limit->dot.min || limit->dot.max < clock->dot)
		FUNC0("dot out of range");

	return true;
}