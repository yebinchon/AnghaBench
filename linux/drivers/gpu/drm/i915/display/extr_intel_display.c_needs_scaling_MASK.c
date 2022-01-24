#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct intel_plane_state {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(const struct intel_plane_state *state)
{
	int src_w = FUNC1(&state->base.src) >> 16;
	int src_h = FUNC0(&state->base.src) >> 16;
	int dst_w = FUNC1(&state->base.dst);
	int dst_h = FUNC0(&state->base.dst);

	return (src_w != dst_w || src_h != dst_h);
}