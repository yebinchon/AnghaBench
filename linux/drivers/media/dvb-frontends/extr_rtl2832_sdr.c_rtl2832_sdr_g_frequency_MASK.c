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
struct v4l2_frequency {int tuner; void* type; int /*<<< orphan*/  frequency; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  f_tuner; int /*<<< orphan*/  v4l2_subdev; int /*<<< orphan*/  f_adc; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* V4L2_TUNER_ADC ; 
 void* V4L2_TUNER_RF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,void*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 struct rtl2832_sdr_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
		struct v4l2_frequency *f)
{
	struct rtl2832_sdr_dev *dev = FUNC3(file);
	struct platform_device *pdev = dev->pdev;
	int ret;

	FUNC1(&pdev->dev, "tuner=%d type=%d\n", f->tuner, f->type);

	if (f->tuner == 0) {
		f->frequency = dev->f_adc;
		f->type = V4L2_TUNER_ADC;
		ret = 0;
	} else if (f->tuner == 1 &&
		   FUNC0(dev->v4l2_subdev, tuner, g_frequency)) {
		f->type = V4L2_TUNER_RF;
		ret = FUNC2(dev->v4l2_subdev, tuner, g_frequency, f);
	} else if (f->tuner == 1) {
		f->frequency = dev->f_tuner;
		f->type = V4L2_TUNER_RF;
		ret = 0;
	} else {
		ret = -EINVAL;
	}
	return ret;
}