#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct srp_target_port {scalar_t__ using_rdma_cm; struct srp_rdma_ch* ch; } ;
struct TYPE_4__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {TYPE_1__ dgid; } ;
struct TYPE_6__ {TYPE_2__ path; } ;
struct srp_rdma_ch {TYPE_3__ ib_cm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct srp_target_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct srp_target_port *target = FUNC1(FUNC0(dev));
	struct srp_rdma_ch *ch = &target->ch[0];

	if (target->using_rdma_cm)
		return -ENOENT;
	return FUNC2(buf, "%pI6\n", ch->ib_cm.path.dgid.raw);
}