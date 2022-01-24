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
typedef  int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMDATA_DONE ; 
 int /*<<< orphan*/  DMDATA_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct dcn20_hubp* FUNC1 (struct hubp*) ; 

bool FUNC2(struct hubp *hubp)
{
	uint32_t status;
	struct dcn20_hubp *hubp2 = FUNC1(hubp);

	FUNC0(DMDATA_STATUS, DMDATA_DONE, &status);
	return (status == 1);
}