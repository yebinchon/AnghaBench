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
typedef  int uint8_t ;
struct fsi_master_acf {int /*<<< orphan*/  dev; scalar_t__ sram; } ;

/* Variables and functions */
 scalar_t__ CMD_STAT_REG ; 
 scalar_t__ INT_CNT ; 
 scalar_t__ RSP_DATA ; 
 scalar_t__ STAT_RCRC ; 
 scalar_t__ STAT_RTAG ; 
 scalar_t__ TRACEBUF ; 
 int TR_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct fsi_master_acf *master)
{
	char trbuf[52];
	char *p;
	int i;

	FUNC0(master->dev,
		"CMDSTAT:%08x RTAG=%02x RCRC=%02x RDATA=%02x #INT=%08x\n",
		FUNC1(master->sram + CMD_STAT_REG),
		FUNC2(master->sram + STAT_RTAG),
		FUNC2(master->sram + STAT_RCRC),
		FUNC1(master->sram + RSP_DATA),
		FUNC1(master->sram + INT_CNT));

	for (i = 0; i < 512; i++) {
		uint8_t v;
		if ((i % 16) == 0)
			p = trbuf;
		v = FUNC2(master->sram + TRACEBUF + i);
		p += FUNC3(p, "%02x ", v);
		if (((i % 16) == 15) || v == TR_END)
			FUNC0(master->dev, "%s\n", trbuf);
		if (v == TR_END)
			break;
	}
}