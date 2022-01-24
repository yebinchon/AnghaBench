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
struct hfi1_affinity_node {int /*<<< orphan*/  comp_vect_affinity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_affinity_node*) ; 

__attribute__((used)) static void FUNC2(struct hfi1_affinity_node *entry)
{
	FUNC0(entry->comp_vect_affinity);
	FUNC1(entry);
}