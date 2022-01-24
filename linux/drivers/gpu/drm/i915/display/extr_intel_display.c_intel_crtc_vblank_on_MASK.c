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
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*) ; 
 struct intel_crtc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC3(crtc_state->base.crtc);

	FUNC0(&crtc->base,
				      FUNC2(crtc_state));
	FUNC1(&crtc->base);
}