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
typedef  int u32 ;
struct saa7146_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIP_FORMAT_CTRL ; 
 int MASK_05 ; 
 int MASK_21 ; 
 int MASK_W1 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  MC2 ; 
 int FUNC0 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct saa7146_dev *dev)
{
	u32 clip_format	= FUNC0(dev, CLIP_FORMAT_CTRL);

	/* mask out relevant bits (=lower word)*/
	clip_format &= MASK_W1;

	/* upload clipping-registers*/
	FUNC1(dev, CLIP_FORMAT_CTRL,clip_format);
	FUNC1(dev, MC2, (MASK_05 | MASK_21));

	/* disable video dma2 */
	FUNC1(dev, MC1, MASK_21);
}