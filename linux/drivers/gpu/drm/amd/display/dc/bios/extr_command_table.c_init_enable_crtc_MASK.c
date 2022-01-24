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
struct TYPE_2__ {int /*<<< orphan*/ * enable_crtc; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EnableCRTC ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * enable_crtc_v1 ; 

__attribute__((used)) static void FUNC2(struct bios_parser *bp)
{
	switch (FUNC0(EnableCRTC)) {
	case 1:
		bp->cmd_tbl.enable_crtc = enable_crtc_v1;
		break;
	default:
		FUNC1("Don't have enable_crtc for v%d\n",
			 FUNC0(EnableCRTC));
		bp->cmd_tbl.enable_crtc = NULL;
		break;
	}
}