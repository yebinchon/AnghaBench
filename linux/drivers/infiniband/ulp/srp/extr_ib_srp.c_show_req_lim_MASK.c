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
struct srp_target_port {int ch_count; struct srp_rdma_ch* ch; } ;
struct srp_rdma_ch {int /*<<< orphan*/  req_lim; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct srp_target_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			    struct device_attribute *attr, char *buf)
{
	struct srp_target_port *target = FUNC1(FUNC0(dev));
	struct srp_rdma_ch *ch;
	int i, req_lim = INT_MAX;

	for (i = 0; i < target->ch_count; i++) {
		ch = &target->ch[i];
		req_lim = FUNC2(req_lim, ch->req_lim);
	}
	return FUNC3(buf, "%d\n", req_lim);
}