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
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;
struct drm_format_info {int hsub; int vsub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int SUN8I_VI_SCALER_COEFF_COUNT ; 
 int /*<<< orphan*/ * bicubic4coefftab32 ; 
 int /*<<< orphan*/ * bicubic8coefftab32_left ; 
 int /*<<< orphan*/ * bicubic8coefftab32_right ; 
 int /*<<< orphan*/  const* lan2coefftab32 ; 
 int /*<<< orphan*/  const* lan3coefftab32_left ; 
 int /*<<< orphan*/  const* lan3coefftab32_right ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct regmap *map, u32 base,
				      u32 hstep, u32 vstep,
				      const struct drm_format_info *format)
{
	const u32 *ch_left, *ch_right, *cy;
	int offset, i;

	if (format->hsub == 1 && format->vsub == 1) {
		ch_left = lan3coefftab32_left;
		ch_right = lan3coefftab32_right;
		cy = lan2coefftab32;
	} else {
		ch_left = bicubic8coefftab32_left;
		ch_right = bicubic8coefftab32_right;
		cy = bicubic4coefftab32;
	}

	offset = FUNC7(hstep) *
			SUN8I_VI_SCALER_COEFF_COUNT;
	for (i = 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
		FUNC6(map, FUNC3(base, i),
			     lan3coefftab32_left[offset + i]);
		FUNC6(map, FUNC4(base, i),
			     lan3coefftab32_right[offset + i]);
		FUNC6(map, FUNC0(base, i),
			     ch_left[offset + i]);
		FUNC6(map, FUNC1(base, i),
			     ch_right[offset + i]);
	}

	offset = FUNC7(hstep) *
			SUN8I_VI_SCALER_COEFF_COUNT;
	for (i = 0; i < SUN8I_VI_SCALER_COEFF_COUNT; i++) {
		FUNC6(map, FUNC5(base, i),
			     lan2coefftab32[offset + i]);
		FUNC6(map, FUNC2(base, i),
			     cy[offset + i]);
	}
}