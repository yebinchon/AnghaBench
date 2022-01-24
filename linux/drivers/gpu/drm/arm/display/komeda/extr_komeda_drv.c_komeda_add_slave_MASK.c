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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  compare_of ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static void FUNC3(struct device *master,
			     struct component_match **match,
			     struct device_node *np,
			     u32 port, u32 endpoint)
{
	struct device_node *remote;

	remote = FUNC1(np, port, endpoint);
	if (remote) {
		FUNC0(master, match, compare_of, remote);
		FUNC2(remote);
	}
}