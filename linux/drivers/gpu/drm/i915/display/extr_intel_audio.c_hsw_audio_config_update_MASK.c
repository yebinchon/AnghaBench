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
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 scalar_t__ FUNC2 (struct intel_crtc_state const*) ; 

__attribute__((used)) static void
FUNC3(struct intel_encoder *encoder,
			const struct intel_crtc_state *crtc_state)
{
	if (FUNC2(crtc_state))
		FUNC0(encoder, crtc_state);
	else
		FUNC1(encoder, crtc_state);
}