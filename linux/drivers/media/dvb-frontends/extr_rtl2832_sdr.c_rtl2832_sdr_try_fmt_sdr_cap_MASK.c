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
struct TYPE_4__ {scalar_t__ pixelformat; int /*<<< orphan*/  buffersize; int /*<<< orphan*/  reserved; } ;
struct TYPE_5__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct rtl2832_sdr_dev {int num_formats; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ pixelformat; int /*<<< orphan*/  buffersize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_3__* formats ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl2832_sdr_dev* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
		struct v4l2_format *f)
{
	struct rtl2832_sdr_dev *dev = FUNC2(file);
	struct platform_device *pdev = dev->pdev;
	int i;

	FUNC0(&pdev->dev, "pixelformat fourcc %4.4s\n",
		(char *)&f->fmt.sdr.pixelformat);

	FUNC1(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));
	for (i = 0; i < dev->num_formats; i++) {
		if (formats[i].pixelformat == f->fmt.sdr.pixelformat) {
			f->fmt.sdr.buffersize = formats[i].buffersize;
			return 0;
		}
	}

	f->fmt.sdr.pixelformat = formats[0].pixelformat;
	f->fmt.sdr.buffersize = formats[0].buffersize;

	return 0;
}