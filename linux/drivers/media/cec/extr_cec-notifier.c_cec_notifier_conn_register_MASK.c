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
struct cec_connector_info {int dummy; } ;
struct cec_notifier {int /*<<< orphan*/  lock; scalar_t__ cec_adap; struct cec_connector_info conn_info; int /*<<< orphan*/  phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 struct cec_notifier* FUNC0 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct cec_connector_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_connector_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct cec_notifier *
FUNC6(struct device *hdmi_dev, const char *conn_name,
			   const struct cec_connector_info *conn_info)
{
	struct cec_notifier *n = FUNC0(hdmi_dev, conn_name);

	if (!n)
		return n;

	FUNC4(&n->lock);
	n->phys_addr = CEC_PHYS_ADDR_INVALID;
	if (conn_info)
		n->conn_info = *conn_info;
	else
		FUNC3(&n->conn_info, 0, sizeof(n->conn_info));
	if (n->cec_adap) {
		FUNC1(n->cec_adap);
		FUNC2(n->cec_adap, conn_info);
	}
	FUNC5(&n->lock);
	return n;
}