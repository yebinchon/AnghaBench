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
struct net_device {int dummy; } ;
struct ipoib_walk_data {struct net_device* result; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *upper, void *_data)
{
	struct ipoib_walk_data *data = _data;
	int ret = 0;

	if (FUNC1(data->addr, upper)) {
		FUNC0(upper);
		data->result = upper;
		ret = 1;
	}

	return ret;
}