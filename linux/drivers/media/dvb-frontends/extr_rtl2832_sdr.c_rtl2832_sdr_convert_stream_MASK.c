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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtl2832_sdr_dev {scalar_t__ pixelformat; unsigned int sample; unsigned int sample_measured; scalar_t__ jiffies_next; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSECS ; 
 scalar_t__ V4L2_SDR_FMT_CU16LE ; 
 scalar_t__ V4L2_SDR_FMT_CU8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,int const*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct rtl2832_sdr_dev *dev,
		void *dst, const u8 *src, unsigned int src_len)
{
	struct platform_device *pdev = dev->pdev;
	unsigned int dst_len;

	if (dev->pixelformat ==  V4L2_SDR_FMT_CU8) {
		/* native stream, no need to convert */
		FUNC2(dst, src, src_len);
		dst_len = src_len;
	} else if (dev->pixelformat == V4L2_SDR_FMT_CU16LE) {
		/* convert u8 to u16 */
		unsigned int i;
		u16 *u16dst = dst;

		for (i = 0; i < src_len; i++)
			*u16dst++ = (src[i] << 8) | (src[i] >> 0);
		dst_len = 2 * src_len;
	} else {
		dst_len = 0;
	}

	/* calculate sample rate and output it in 10 seconds intervals */
	if (FUNC5(FUNC4(dev->jiffies_next))) {
		#define MSECS 10000UL
		unsigned int msecs = FUNC1(jiffies -
				dev->jiffies_next + FUNC3(MSECS));
		unsigned int samples = dev->sample - dev->sample_measured;

		dev->jiffies_next = jiffies + FUNC3(MSECS);
		dev->sample_measured = dev->sample;
		FUNC0(&pdev->dev,
			"slen=%u samples=%u msecs=%u sample rate=%lu\n",
			src_len, samples, msecs, samples * 1000UL / msecs);
	}

	/* total number of I+Q pairs */
	dev->sample += src_len / 2;

	return dst_len;
}