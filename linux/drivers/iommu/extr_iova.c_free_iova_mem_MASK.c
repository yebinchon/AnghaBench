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
struct iova {scalar_t__ pfn_lo; } ;

/* Variables and functions */
 scalar_t__ IOVA_ANCHOR ; 
 int /*<<< orphan*/  iova_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iova*) ; 

void FUNC1(struct iova *iova)
{
	if (iova->pfn_lo != IOVA_ANCHOR)
		FUNC0(iova_cache, iova);
}