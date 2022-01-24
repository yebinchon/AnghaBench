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
struct spu_queue {int dummy; } ;
struct cwq_initial_entry {int dummy; } ;

/* Variables and functions */
 unsigned long HV_EOK ; 
 unsigned long FUNC0 (struct spu_queue*,struct cwq_initial_entry*) ; 
 unsigned long FUNC1 (struct spu_queue*) ; 

__attribute__((used)) static unsigned long FUNC2(struct spu_queue *qp,
					      struct cwq_initial_entry *ent)
{
	unsigned long hv_ret = FUNC0(qp, ent);

	if (hv_ret == HV_EOK)
		hv_ret = FUNC1(qp);

	return hv_ret;
}