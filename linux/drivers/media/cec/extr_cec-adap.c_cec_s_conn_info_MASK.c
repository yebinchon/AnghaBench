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
struct cec_connector_info {int dummy; } ;
struct cec_adapter {int capabilities; int /*<<< orphan*/  lock; struct cec_connector_info conn_info; } ;

/* Variables and functions */
 int CEC_CAP_CONNECTOR_INFO ; 
 scalar_t__ FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_connector_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct cec_adapter *adap,
		     const struct cec_connector_info *conn_info)
{
	if (FUNC0(adap))
		return;

	if (!(adap->capabilities & CEC_CAP_CONNECTOR_INFO))
		return;

	FUNC3(&adap->lock);
	if (conn_info)
		adap->conn_info = *conn_info;
	else
		FUNC2(&adap->conn_info, 0, sizeof(adap->conn_info));
	FUNC1(adap);
	FUNC4(&adap->lock);
}