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
struct dm_crtc_state {int vrr_supported; int /*<<< orphan*/  vrr_infopacket; int /*<<< orphan*/  vrr_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(
	struct dm_crtc_state *new_crtc_state)
{
	new_crtc_state->vrr_supported = false;

	FUNC0(&new_crtc_state->vrr_params, 0,
	       sizeof(new_crtc_state->vrr_params));
	FUNC0(&new_crtc_state->vrr_infopacket, 0,
	       sizeof(new_crtc_state->vrr_infopacket));
}