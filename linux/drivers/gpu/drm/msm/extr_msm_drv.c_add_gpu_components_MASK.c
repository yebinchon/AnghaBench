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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  compare_of ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct component_match**,int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  msm_gpu_match ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			      struct component_match **matchptr)
{
	struct device_node *np;

	np = FUNC2(NULL, msm_gpu_match);
	if (!np)
		return 0;

	if (FUNC1(np))
		FUNC0(dev, matchptr, compare_of, np);

	FUNC3(np);

	return 0;
}