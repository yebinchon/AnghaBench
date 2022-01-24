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
struct owl_dma_lli {int /*<<< orphan*/  phys; int /*<<< orphan*/  node; } ;
struct owl_dma {int /*<<< orphan*/  lli_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct owl_dma_lli*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct owl_dma *od,
			     struct owl_dma_lli *lli)
{
	FUNC1(&lli->node);
	FUNC0(od->lli_pool, lli, lli->phys);
}