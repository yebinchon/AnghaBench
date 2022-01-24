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
struct device {int dummy; } ;
struct cppi41_desc {int dummy; } ;
struct cppi41_dd {int /*<<< orphan*/  descs_phys; int /*<<< orphan*/  cd; scalar_t__ qmgr_mem; } ;

/* Variables and functions */
 int ALLOC_DECS_NUM ; 
 int DESCS_AREAS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, struct cppi41_dd *cdd)
{
	unsigned int mem_decs;
	int i;

	mem_decs = ALLOC_DECS_NUM * sizeof(struct cppi41_desc);

	for (i = 0; i < DESCS_AREAS; i++) {

		FUNC2(0, cdd->qmgr_mem + FUNC0(i));
		FUNC2(0, cdd->qmgr_mem + FUNC1(i));

		FUNC3(dev, mem_decs, cdd->cd,
				cdd->descs_phys);
	}
}