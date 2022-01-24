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
struct seq_file {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int LAYER_INFO ; 
 int LAYER_RGB_RGB_COEFF0 ; 
 int L_INFO_CM ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct komeda_component *c, struct seq_file *sf)
{
	u32 v[15], i;
	bool rich, rgb2rgb;
	char *prefix;

	FUNC1(c->reg, LAYER_INFO, 1, &v[14]);
	if (v[14] & 0x1) {
		rich = true;
		prefix = "LR_";
	} else {
		rich = false;
		prefix = "LS_";
	}

	rgb2rgb = !!(v[14] & L_INFO_CM);

	FUNC0(sf, c->reg);

	FUNC2(sf, "%sLAYER_INFO:\t\t0x%X\n", prefix, v[14]);

	FUNC1(c->reg, 0xD0, 1, v);
	FUNC2(sf, "%sCONTROL:\t\t0x%X\n", prefix, v[0]);
	if (rich) {
		FUNC1(c->reg, 0xD4, 1, v);
		FUNC2(sf, "LR_RICH_CONTROL:\t0x%X\n", v[0]);
	}
	FUNC1(c->reg, 0xD8, 4, v);
	FUNC2(sf, "%sFORMAT:\t\t0x%X\n", prefix, v[0]);
	FUNC2(sf, "%sIT_COEFFTAB:\t\t0x%X\n", prefix, v[1]);
	FUNC2(sf, "%sIN_SIZE:\t\t0x%X\n", prefix, v[2]);
	FUNC2(sf, "%sPALPHA:\t\t0x%X\n", prefix, v[3]);

	FUNC1(c->reg, 0x100, 3, v);
	FUNC2(sf, "%sP0_PTR_LOW:\t\t0x%X\n", prefix, v[0]);
	FUNC2(sf, "%sP0_PTR_HIGH:\t\t0x%X\n", prefix, v[1]);
	FUNC2(sf, "%sP0_STRIDE:\t\t0x%X\n", prefix, v[2]);

	FUNC1(c->reg, 0x110, 2, v);
	FUNC2(sf, "%sP1_PTR_LOW:\t\t0x%X\n", prefix, v[0]);
	FUNC2(sf, "%sP1_PTR_HIGH:\t\t0x%X\n", prefix, v[1]);
	if (rich) {
		FUNC1(c->reg, 0x118, 1, v);
		FUNC2(sf, "LR_P1_STRIDE:\t\t0x%X\n", v[0]);

		FUNC1(c->reg, 0x120, 2, v);
		FUNC2(sf, "LR_P2_PTR_LOW:\t\t0x%X\n", v[0]);
		FUNC2(sf, "LR_P2_PTR_HIGH:\t\t0x%X\n", v[1]);

		FUNC1(c->reg, 0x130, 12, v);
		for (i = 0; i < 12; i++)
			FUNC2(sf, "LR_YUV_RGB_COEFF%u:\t0x%X\n", i, v[i]);
	}

	if (rgb2rgb) {
		FUNC1(c->reg, LAYER_RGB_RGB_COEFF0, 12, v);
		for (i = 0; i < 12; i++)
			FUNC2(sf, "LS_RGB_RGB_COEFF%u:\t0x%X\n", i, v[i]);
	}

	FUNC1(c->reg, 0x160, 3, v);
	FUNC2(sf, "%sAD_CONTROL:\t\t0x%X\n", prefix, v[0]);
	FUNC2(sf, "%sAD_H_CROP:\t\t0x%X\n", prefix, v[1]);
	FUNC2(sf, "%sAD_V_CROP:\t\t0x%X\n", prefix, v[2]);
}