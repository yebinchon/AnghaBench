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
struct idr {int dummy; } ;
struct scmi_info {struct idr rx_idr; struct idr tx_idr; int /*<<< orphan*/  node; scalar_t__ users; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct idr*) ; 
 int FUNC1 (struct idr*,int /*<<< orphan*/ ,struct idr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct scmi_info* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  scmi_list_mutex ; 
 int /*<<< orphan*/  scmi_mbox_free_channel ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	int ret = 0;
	struct scmi_info *info = FUNC5(pdev);
	struct idr *idr = &info->tx_idr;

	FUNC3(&scmi_list_mutex);
	if (info->users)
		ret = -EBUSY;
	else
		FUNC2(&info->node);
	FUNC4(&scmi_list_mutex);

	if (ret)
		return ret;

	/* Safe to free channels since no more users */
	ret = FUNC1(idr, scmi_mbox_free_channel, idr);
	FUNC0(&info->tx_idr);

	idr = &info->rx_idr;
	ret = FUNC1(idr, scmi_mbox_free_channel, idr);
	FUNC0(&info->rx_idr);

	return ret;
}