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
typedef  int u32 ;
struct TYPE_2__ {int corr; } ;
struct drm_i915_private {TYPE_1__ ips; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSIEW0 ; 
 int /*<<< orphan*/  CSIEW1 ; 
 int /*<<< orphan*/  CSIEW2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  ECR ; 
 int /*<<< orphan*/  EG0 ; 
 int /*<<< orphan*/  EG1 ; 
 int /*<<< orphan*/  EG2 ; 
 int /*<<< orphan*/  EG3 ; 
 int /*<<< orphan*/  EG4 ; 
 int /*<<< orphan*/  EG5 ; 
 int /*<<< orphan*/  EG6 ; 
 int /*<<< orphan*/  EG7 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LCFUSE02 ; 
 int LCFUSE_HIV_MASK ; 
 int /*<<< orphan*/  OGW0 ; 
 int /*<<< orphan*/  OGW1 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int PXVFREQ_PX_MASK ; 
 int PXVFREQ_PX_SHIFT ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  SDEW ; 
 unsigned long FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct drm_i915_private *dev_priv)
{
	u32 lcfuse;
	u8 pxw[16];
	int i;

	/* Disable to program */
	FUNC3(ECR, 0);
	FUNC5(ECR);

	/* Program energy weights for various events */
	FUNC3(SDEW, 0x15040d00);
	FUNC3(CSIEW0, 0x007f0000);
	FUNC3(CSIEW1, 0x1e220004);
	FUNC3(CSIEW2, 0x04000004);

	for (i = 0; i < 5; i++)
		FUNC3(FUNC4(i), 0);
	for (i = 0; i < 3; i++)
		FUNC3(FUNC0(i), 0);

	/* Program P-state weights to account for frequency power adjustment */
	for (i = 0; i < 16; i++) {
		u32 pxvidfreq = FUNC2(FUNC6(i));
		unsigned long freq = FUNC9(pxvidfreq);
		unsigned long vid = (pxvidfreq & PXVFREQ_PX_MASK) >>
			PXVFREQ_PX_SHIFT;
		unsigned long val;

		val = vid * vid;
		val *= (freq / 1000);
		val *= 255;
		val /= (127*127*900);
		if (val > 0xff)
			FUNC1("bad pxval: %ld\n", val);
		pxw[i] = val;
	}
	/* Render standby states get 0 weight */
	pxw[14] = 0;
	pxw[15] = 0;

	for (i = 0; i < 4; i++) {
		u32 val = (pxw[i*4] << 24) | (pxw[(i*4)+1] << 16) |
			(pxw[(i*4)+2] << 8) | (pxw[(i*4)+3]);
		FUNC3(FUNC7(i), val);
	}

	/* Adjust magic regs to magic values (more experimental results) */
	FUNC3(OGW0, 0);
	FUNC3(OGW1, 0);
	FUNC3(EG0, 0x00007f00);
	FUNC3(EG1, 0x0000000e);
	FUNC3(EG2, 0x000e0000);
	FUNC3(EG3, 0x68000300);
	FUNC3(EG4, 0x42000000);
	FUNC3(EG5, 0x00140031);
	FUNC3(EG6, 0);
	FUNC3(EG7, 0);

	for (i = 0; i < 8; i++)
		FUNC3(FUNC8(i), 0);

	/* Enable PMON + select events */
	FUNC3(ECR, 0x80000019);

	lcfuse = FUNC2(LCFUSE02);

	dev_priv->ips.corr = (lcfuse & LCFUSE_HIV_MASK);
}