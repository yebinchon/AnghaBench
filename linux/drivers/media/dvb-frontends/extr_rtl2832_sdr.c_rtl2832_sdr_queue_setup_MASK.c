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
struct vb2_queue {unsigned int num_buffers; } ;
struct rtl2832_sdr_dev {int /*<<< orphan*/  buffersize; struct platform_device* pdev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 struct rtl2832_sdr_dev* FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC3(struct vb2_queue *vq,
		unsigned int *nbuffers,
		unsigned int *nplanes, unsigned int sizes[], struct device *alloc_devs[])
{
	struct rtl2832_sdr_dev *dev = FUNC2(vq);
	struct platform_device *pdev = dev->pdev;

	FUNC1(&pdev->dev, "nbuffers=%d\n", *nbuffers);

	/* Need at least 8 buffers */
	if (vq->num_buffers + *nbuffers < 8)
		*nbuffers = 8 - vq->num_buffers;
	*nplanes = 1;
	sizes[0] = FUNC0(dev->buffersize);
	FUNC1(&pdev->dev, "nbuffers=%d sizes[0]=%d\n", *nbuffers, sizes[0]);
	return 0;
}