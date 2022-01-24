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
struct stp_policy_node {int first_master; int last_master; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 struct stp_policy_node* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct config_item *item, char *page)
{
	struct stp_policy_node *policy_node = FUNC1(item);
	ssize_t count;

	count = FUNC0(page, "%u %u\n", policy_node->first_master,
			policy_node->last_master);

	return count;
}