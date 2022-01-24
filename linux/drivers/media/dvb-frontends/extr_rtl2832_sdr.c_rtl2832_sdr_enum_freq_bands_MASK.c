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
struct v4l2_frequency_band {int tuner; size_t index; int /*<<< orphan*/  type; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  v4l2_subdev; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct v4l2_frequency_band*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_frequency_band* bands_adc ; 
 struct v4l2_frequency_band* bands_fm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  enum_freq_bands ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency_band*) ; 
 struct rtl2832_sdr_dev* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void *priv,
		struct v4l2_frequency_band *band)
{
	struct rtl2832_sdr_dev *dev = FUNC4(file);
	struct platform_device *pdev = dev->pdev;
	int ret;

	FUNC2(&pdev->dev, "tuner=%d type=%d index=%d\n",
		band->tuner, band->type, band->index);

	if (band->tuner == 0) {
		if (band->index >= FUNC0(bands_adc))
			return -EINVAL;

		*band = bands_adc[band->index];
		ret = 0;
	} else if (band->tuner == 1 &&
		   FUNC1(dev->v4l2_subdev, tuner, enum_freq_bands)) {
		ret = FUNC3(dev->v4l2_subdev, tuner, enum_freq_bands, band);
	} else if (band->tuner == 1) {
		if (band->index >= FUNC0(bands_fm))
			return -EINVAL;

		*band = bands_fm[band->index];
		ret = 0;
	} else {
		ret = -EINVAL;
	}
	return ret;
}