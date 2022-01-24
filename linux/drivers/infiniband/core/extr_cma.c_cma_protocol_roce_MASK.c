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
struct rdma_cm_id {int port_num; struct ib_device* device; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ib_device*,int const) ; 
 int FUNC1 (struct ib_device*) ; 

__attribute__((used)) static bool FUNC2(const struct rdma_cm_id *id)
{
	struct ib_device *device = id->device;
	const int port_num = id->port_num ?: FUNC1(device);

	return FUNC0(device, port_num);
}