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
struct ide_atapi_pc {int* c; int req_xfer; } ;

/* Variables and functions */
 int INQUIRY ; 
 int /*<<< orphan*/  FUNC0 (struct ide_atapi_pc*) ; 

__attribute__((used)) static void FUNC1(struct ide_atapi_pc *pc)
{
	FUNC0(pc);
	pc->c[0] = INQUIRY;
	pc->c[4] = 254;
	pc->req_xfer = 254;
}