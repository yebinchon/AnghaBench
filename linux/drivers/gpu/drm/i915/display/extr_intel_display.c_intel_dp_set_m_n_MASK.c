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
struct intel_link_m_n {int dummy; } ;
struct intel_crtc_state {struct intel_link_m_n dp_m_n; scalar_t__ has_pch_encoder; struct intel_link_m_n dp_m2_n2; } ;
typedef  enum link_m_n_set { ____Placeholder_link_m_n_set } link_m_n_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int M1_N1 ; 
 int M2_N2 ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc_state const*,struct intel_link_m_n const*,struct intel_link_m_n const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state const*,struct intel_link_m_n*) ; 

void FUNC3(const struct intel_crtc_state *crtc_state, enum link_m_n_set m_n)
{
	const struct intel_link_m_n *dp_m_n, *dp_m2_n2 = NULL;

	if (m_n == M1_N1) {
		dp_m_n = &crtc_state->dp_m_n;
		dp_m2_n2 = &crtc_state->dp_m2_n2;
	} else if (m_n == M2_N2) {

		/*
		 * M2_N2 registers are not supported. Hence m2_n2 divider value
		 * needs to be programmed into M1_N1.
		 */
		dp_m_n = &crtc_state->dp_m2_n2;
	} else {
		FUNC0("Unsupported divider value\n");
		return;
	}

	if (crtc_state->has_pch_encoder)
		FUNC2(crtc_state, &crtc_state->dp_m_n);
	else
		FUNC1(crtc_state, dp_m_n, dp_m2_n2);
}