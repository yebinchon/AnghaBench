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
struct nvkm_mc {int dummy; } ;
struct gp100_mc {int intr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct gp100_mc* FUNC0 (struct nvkm_mc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gp100_mc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct nvkm_mc *base)
{
	struct gp100_mc *mc = FUNC0(base);
	unsigned long flags;
	FUNC2(&mc->lock, flags);
	mc->intr = true;
	FUNC1(mc);
	FUNC3(&mc->lock, flags);
}