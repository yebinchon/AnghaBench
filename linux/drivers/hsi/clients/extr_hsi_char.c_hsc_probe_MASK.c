#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hsi_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct hsc_client_data {TYPE_1__ cdev; struct hsc_channel* channels; struct hsi_client* cl; int /*<<< orphan*/  lock; } ;
struct hsc_channel {int ch; struct hsc_client_data* cl_data; struct hsi_client* cl; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HSC_DEVS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,int,char const*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct hsc_channel*) ; 
 int /*<<< orphan*/  hsc_fops ; 
 scalar_t__ hsc_major ; 
 int /*<<< orphan*/  FUNC8 (struct hsi_client*,struct hsc_client_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct hsi_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct hsc_client_data*) ; 
 struct hsc_client_data* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,char const*) ; 
 struct hsi_client* FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct device *dev)
{
	const char devname[] = "hsi_char";
	struct hsc_client_data *cl_data;
	struct hsc_channel *channel;
	struct hsi_client *cl = FUNC15(dev);
	unsigned int hsc_baseminor;
	dev_t hsc_dev;
	int ret;
	int i;

	cl_data = FUNC12(sizeof(*cl_data), GFP_KERNEL);
	if (!cl_data)
		return -ENOMEM;

	hsc_baseminor = FUNC0(FUNC9(cl), FUNC10(cl));
	if (!hsc_major) {
		ret = FUNC3(&hsc_dev, hsc_baseminor,
						HSC_DEVS, devname);
		if (ret == 0)
			hsc_major = FUNC1(hsc_dev);
	} else {
		hsc_dev = FUNC2(hsc_major, hsc_baseminor);
		ret = FUNC14(hsc_dev, HSC_DEVS, devname);
	}
	if (ret < 0) {
		FUNC6(dev, "Device %s allocation failed %d\n",
					hsc_major ? "minor" : "major", ret);
		goto out1;
	}
	FUNC13(&cl_data->lock);
	FUNC8(cl, cl_data);
	FUNC5(&cl_data->cdev, &hsc_fops);
	cl_data->cdev.owner = THIS_MODULE;
	cl_data->cl = cl;
	for (i = 0, channel = cl_data->channels; i < HSC_DEVS; i++, channel++) {
		FUNC7(channel);
		channel->ch = i;
		channel->cl = cl;
		channel->cl_data = cl_data;
	}

	/* 1 hsi client -> N char devices (one for each channel) */
	ret = FUNC4(&cl_data->cdev, hsc_dev, HSC_DEVS);
	if (ret) {
		FUNC6(dev, "Could not add char device %d\n", ret);
		goto out2;
	}

	return 0;
out2:
	FUNC16(hsc_dev, HSC_DEVS);
out1:
	FUNC11(cl_data);

	return ret;
}