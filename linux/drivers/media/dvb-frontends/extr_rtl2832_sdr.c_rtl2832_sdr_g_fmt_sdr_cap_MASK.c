#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  reserved; int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; } ;
struct TYPE_4__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  buffersize; int /*<<< orphan*/  pixelformat; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl2832_sdr_dev* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
		struct v4l2_format *f)
{
	struct rtl2832_sdr_dev *dev = FUNC2(file);
	struct platform_device *pdev = dev->pdev;

	FUNC0(&pdev->dev, "\n");

	f->fmt.sdr.pixelformat = dev->pixelformat;
	f->fmt.sdr.buffersize = dev->buffersize;

	FUNC1(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));

	return 0;
}