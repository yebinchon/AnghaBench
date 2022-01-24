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
 int MGA1064_GEN_IO_DATA ; 
 int MGA1064_REMHEADCTL2 ; 
 int MGA1064_SPAREREG ; 
 int /*<<< orphan*/  MGAREG_CRTCEXT_DATA ; 
 int /*<<< orphan*/  MGAREG_CRTCEXT_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	u8 tmp;
	struct mga_device *mdev = crtc->dev->dev_private;

	/* 1- The first step is to ensure that the vrsten and hrsten are set */
	FUNC1(MGAREG_CRTCEXT_INDEX, 1);
	tmp = FUNC0(MGAREG_CRTCEXT_DATA);
	FUNC1(MGAREG_CRTCEXT_DATA, tmp | 0x88);

	/* 2- second step is to assert the rstlvl2 */
	FUNC1(DAC_INDEX, MGA1064_REMHEADCTL2);
	tmp = FUNC0(DAC_DATA);
	tmp |= 0x8;
	FUNC1(DAC_DATA, tmp);

	/* wait 10 us */
	FUNC3(10);

	/* 3- deassert rstlvl2 */
	tmp &= ~0x08;
	FUNC1(DAC_INDEX, MGA1064_REMHEADCTL2);
	FUNC1(DAC_DATA, tmp);

	/* 4- remove mask of scan request */
	FUNC1(DAC_INDEX, MGA1064_SPAREREG);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~0x80;
	FUNC1(DAC_DATA, tmp);

	/* 5- put back a 0 on the misc<0> line */
	FUNC1(DAC_INDEX, MGA1064_GEN_IO_DATA);
	tmp = FUNC0(DAC_DATA);
	tmp &= ~0x10;
	FUNC2(MGA1064_GEN_IO_DATA, tmp);
}