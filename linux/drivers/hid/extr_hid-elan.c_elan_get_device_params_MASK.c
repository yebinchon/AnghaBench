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
struct hid_device {int dummy; } ;
struct elan_drvdata {unsigned char max_x; unsigned char max_y; void* res_y; void* res_x; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELAN_FEATURE_SIZE ; 
 int /*<<< orphan*/  ELAN_PARAM_MAX_X ; 
 int /*<<< orphan*/  ELAN_PARAM_MAX_Y ; 
 int /*<<< orphan*/  ELAN_PARAM_RES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned char) ; 
 int FUNC1 (struct hid_device*,unsigned char*,int /*<<< orphan*/ ) ; 
 struct elan_drvdata* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev)
{
	struct elan_drvdata *drvdata = FUNC2(hdev);
	unsigned char *dmabuf;
	int ret;

	dmabuf = FUNC4(ELAN_FEATURE_SIZE, GFP_KERNEL);
	if (!dmabuf)
		return -ENOMEM;

	ret = FUNC1(hdev, dmabuf, ELAN_PARAM_MAX_X);
	if (ret)
		goto err;

	drvdata->max_x = (dmabuf[4] << 8) | dmabuf[3];

	ret = FUNC1(hdev, dmabuf, ELAN_PARAM_MAX_Y);
	if (ret)
		goto err;

	drvdata->max_y = (dmabuf[4] << 8) | dmabuf[3];

	ret = FUNC1(hdev, dmabuf, ELAN_PARAM_RES);
	if (ret)
		goto err;

	drvdata->res_x = FUNC0(dmabuf[3]);
	drvdata->res_y = FUNC0(dmabuf[4]);

err:
	FUNC3(dmabuf);
	return ret;
}