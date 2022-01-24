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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * dig_encoder_control; } ;
struct bios_parser {TYPE_1__ cmd_tbl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  digxencodercontrol ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * encoder_control_digx_v1_5 ; 

__attribute__((used)) static void FUNC2(struct bios_parser *bp)
{
	uint32_t version =
		FUNC0(digxencodercontrol);

	switch (version) {
	case 5:
		bp->cmd_tbl.dig_encoder_control = encoder_control_digx_v1_5;
		break;
	default:
		FUNC1("Don't have dig_encoder_control for v%d\n", version);
		bp->cmd_tbl.dig_encoder_control = NULL;
		break;
	}
}