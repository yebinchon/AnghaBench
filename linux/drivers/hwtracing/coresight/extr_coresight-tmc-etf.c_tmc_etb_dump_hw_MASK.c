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
typedef  int u32 ;
struct tmc_drvdata {char* buf; scalar_t__ len; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ TMC_RRD ; 
 scalar_t__ TMC_STS ; 
 int TMC_STS_FULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct tmc_drvdata *drvdata)
{
	char *bufp;
	u32 read_data, lost;

	/* Check if the buffer wrapped around. */
	lost = FUNC2(drvdata->base + TMC_STS) & TMC_STS_FULL;
	bufp = drvdata->buf;
	drvdata->len = 0;
	while (1) {
		read_data = FUNC2(drvdata->base + TMC_RRD);
		if (read_data == 0xFFFFFFFF)
			break;
		FUNC1(bufp, &read_data, 4);
		bufp += 4;
		drvdata->len += 4;
	}

	if (lost)
		FUNC0(drvdata->buf);
	return;
}