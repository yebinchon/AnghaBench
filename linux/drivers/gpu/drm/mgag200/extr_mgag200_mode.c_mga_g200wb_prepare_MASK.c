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
typedef  int u8 ;
struct mga_device {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct mga_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAC_DATA ; 
 int /*<<< orphan*/  DAC_INDEX ; 
 int /*<<< orphan*/  MGA1064_GEN_IO_CTL ; 
 int /*<<< orphan*/  MGA1064_GEN_IO_DATA ; 
 int /*<<< orphan*/  MGA1064_SPAREREG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct mga_device *mdev = crtc->dev->dev_private;
	u8 tmp;
	int iter_max;

	/* 1- The first step is to warn the BMC of an upcoming mode change.
	 * We are putting the misc<0> to output.*/

	FUNC1(DAC_INDEX, MGA1064_GEN_IO_CTL);
	tmp = FUNC0(DAC_DATA);
	tmp |= 0x10;
	FUNC2(MGA1064_GEN_IO_CTL, tmp);

	/* we are putting a 1 on the misc<0> line */
	FUNC1(DAC_INDEX, MGA1064_GEN_IO_DATA);
	tmp = FUNC0(DAC_DATA);
	tmp |= 0x10;
	FUNC2(MGA1064_GEN_IO_DATA, tmp);

	/* 2- Second step to mask and further scan request
	 * This will be done by asserting the remfreqmsk bit (XSPAREREG<7>)
	 */
	FUNC1(DAC_INDEX, MGA1064_SPAREREG);
	tmp = FUNC0(DAC_DATA);
	tmp |= 0x80;
	FUNC2(MGA1064_SPAREREG, tmp);

	/* 3a- the third step is to verifu if there is an active scan
	 * We are searching for a 0 on remhsyncsts <XSPAREREG<0>)
	 */
	iter_max = 300;
	while (!(tmp & 0x1) && iter_max) {
		FUNC1(DAC_INDEX, MGA1064_SPAREREG);
		tmp = FUNC0(DAC_DATA);
		FUNC3(1000);
		iter_max--;
	}

	/* 3b- this step occurs only if the remove is actually scanning
	 * we are waiting for the end of the frame which is a 1 on
	 * remvsyncsts (XSPAREREG<1>)
	 */
	if (iter_max) {
		iter_max = 300;
		while ((tmp & 0x2) && iter_max) {
			FUNC1(DAC_INDEX, MGA1064_SPAREREG);
			tmp = FUNC0(DAC_DATA);
			FUNC3(1000);
			iter_max--;
		}
	}
}