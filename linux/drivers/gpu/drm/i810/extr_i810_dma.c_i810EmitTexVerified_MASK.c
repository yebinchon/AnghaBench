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
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_i810_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int GFX_OP_MAP_INFO ; 
 size_t I810_TEXREG_MI1 ; 
 size_t I810_TEXREG_MI2 ; 
 size_t I810_TEXREG_MI3 ; 
 int I810_TEX_SETUP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int volatile) ; 
 int /*<<< orphan*/  RING_LOCALS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev, volatile unsigned int *code)
{
	drm_i810_private_t *dev_priv = dev->dev_private;
	int i, j = 0;
	unsigned int tmp;
	RING_LOCALS;

	FUNC1(I810_TEX_SETUP_SIZE);

	FUNC2(GFX_OP_MAP_INFO);
	FUNC2(code[I810_TEXREG_MI1]);
	FUNC2(code[I810_TEXREG_MI2]);
	FUNC2(code[I810_TEXREG_MI3]);

	for (i = 4; i < I810_TEX_SETUP_SIZE; i++) {
		tmp = code[i];

		if ((tmp & (7 << 29)) == (3 << 29) &&
		    (tmp & (0x1f << 24)) < (0x1d << 24)) {
			FUNC2(tmp);
			j++;
		} else
			FUNC3("texture state dropped!!!\n");
	}

	if (j & 1)
		FUNC2(0);

	FUNC0();
}