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
struct mmu_rb_node {scalar_t__ len; scalar_t__ addr; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC1(struct mmu_rb_node *node)
{
	return FUNC0(node->addr + node->len) - 1;
}