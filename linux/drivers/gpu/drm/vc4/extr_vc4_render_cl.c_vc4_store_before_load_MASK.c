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
struct vc4_rcl_setup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC4_LOADSTORE_TILE_BUFFER_BUFFER ; 
 int /*<<< orphan*/  VC4_LOADSTORE_TILE_BUFFER_NONE ; 
 int /*<<< orphan*/  VC4_PACKET_STORE_TILE_BUFFER_GENERAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR ; 
 int VC4_STORE_TILE_BUFFER_DISABLE_VG_MASK_CLEAR ; 
 int VC4_STORE_TILE_BUFFER_DISABLE_ZS_CLEAR ; 
 int /*<<< orphan*/  FUNC1 (struct vc4_rcl_setup*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc4_rcl_setup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vc4_rcl_setup*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vc4_rcl_setup *setup)
{
	FUNC3(setup, VC4_PACKET_STORE_TILE_BUFFER_GENERAL);
	FUNC1(setup,
		FUNC0(VC4_LOADSTORE_TILE_BUFFER_NONE,
			      VC4_LOADSTORE_TILE_BUFFER_BUFFER) |
		VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR |
		VC4_STORE_TILE_BUFFER_DISABLE_ZS_CLEAR |
		VC4_STORE_TILE_BUFFER_DISABLE_VG_MASK_CLEAR);
	FUNC2(setup, 0); /* no address, since we're in None mode */
}