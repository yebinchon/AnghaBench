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
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MASK_22 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  FUNC0 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct saa7146_fh *fh)
{
	struct saa7146_dev *dev = fh->dev;

	/* disable clipping + video dma1 */
	FUNC0(dev);
	FUNC1(dev, MC1, MASK_22);
}