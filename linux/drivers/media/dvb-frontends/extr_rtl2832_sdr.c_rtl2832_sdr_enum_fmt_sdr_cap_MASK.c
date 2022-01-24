#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_fmtdesc {scalar_t__ index; int /*<<< orphan*/  pixelformat; } ;
struct rtl2832_sdr_dev {scalar_t__ num_formats; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* formats ; 
 struct rtl2832_sdr_dev* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
		struct v4l2_fmtdesc *f)
{
	struct rtl2832_sdr_dev *dev = FUNC1(file);
	struct platform_device *pdev = dev->pdev;

	FUNC0(&pdev->dev, "\n");

	if (f->index >= dev->num_formats)
		return -EINVAL;

	f->pixelformat = formats[f->index].pixelformat;

	return 0;
}