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
struct device {int dummy; } ;
struct cec_notifier {int /*<<< orphan*/  lock; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  conn_info; struct cec_adapter* cec_adap; } ;
struct cec_adapter {struct cec_notifier* notifier; int /*<<< orphan*/  conn_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct cec_notifier* FUNC1 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct cec_notifier *
FUNC5(struct device *hdmi_dev, const char *conn_name,
			       struct cec_adapter *adap)
{
	struct cec_notifier *n;

	if (FUNC0(!adap))
		return NULL;

	n = FUNC1(hdmi_dev, conn_name);
	if (!n)
		return n;

	FUNC3(&n->lock);
	n->cec_adap = adap;
	adap->conn_info = n->conn_info;
	adap->notifier = n;
	FUNC2(adap, n->phys_addr, false);
	FUNC4(&n->lock);
	return n;
}