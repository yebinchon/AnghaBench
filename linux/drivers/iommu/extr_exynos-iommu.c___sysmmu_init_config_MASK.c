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
struct sysmmu_drvdata {scalar_t__ version; scalar_t__ sfrbase; } ;

/* Variables and functions */
 unsigned int CFG_ACGEN ; 
 unsigned int CFG_EAP ; 
 unsigned int CFG_FLPDCACHE ; 
 unsigned int CFG_LRU ; 
 unsigned int FUNC0 (int) ; 
 unsigned int CFG_SYSSEL ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ REG_MMU_CFG ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sysmmu_drvdata *data)
{
	unsigned int cfg;

	if (data->version <= FUNC1(3, 1))
		cfg = CFG_LRU | FUNC0(15);
	else if (data->version <= FUNC1(3, 2))
		cfg = CFG_LRU | FUNC0(15) | CFG_FLPDCACHE | CFG_SYSSEL;
	else
		cfg = FUNC0(15) | CFG_FLPDCACHE | CFG_ACGEN;

	cfg |= CFG_EAP; /* enable access protection bits check */

	FUNC2(cfg, data->sfrbase + REG_MMU_CFG);
}