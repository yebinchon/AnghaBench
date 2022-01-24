#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct psb_intel_sdvo {int dummy; } ;
struct TYPE_3__ {scalar_t__ cmd; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct psb_intel_sdvo*) ; 
 TYPE_1__* sdvo_cmd_names ; 

__attribute__((used)) static void FUNC3(struct psb_intel_sdvo *psb_intel_sdvo, u8 cmd,
				   const void *args, int args_len)
{
	int i;

	FUNC1("%s: W: %02X ",
				FUNC2(psb_intel_sdvo), cmd);
	for (i = 0; i < args_len; i++)
		FUNC1("%02X ", ((u8 *)args)[i]);
	for (; i < 8; i++)
		FUNC1("   ");
	for (i = 0; i < FUNC0(sdvo_cmd_names); i++) {
		if (cmd == sdvo_cmd_names[i].cmd) {
			FUNC1("(%s)", sdvo_cmd_names[i].name);
			break;
		}
	}
	if (i == FUNC0(sdvo_cmd_names))
		FUNC1("(%02X)", cmd);
	FUNC1("\n");
}