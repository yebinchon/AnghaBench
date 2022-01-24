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
struct icc_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  icc_lock ; 
 struct icc_node* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct icc_node *FUNC3(int id)
{
	struct icc_node *node;

	FUNC1(&icc_lock);

	node = FUNC0(id);

	FUNC2(&icc_lock);

	return node;
}