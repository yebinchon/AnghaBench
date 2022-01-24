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
typedef  int /*<<< orphan*/  uint16_t ;
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
typedef  enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct dcn10_dpp* FUNC1 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn10_dpp*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int*) ; 

void FUNC4(
		struct dpp *dpp_base,
		enum dc_color_space colorspace)
{
	struct dcn10_dpp *dpp = FUNC1(dpp_base);
	const uint16_t *regval = NULL;
	int arr_size;

	regval = FUNC3(colorspace, &arr_size);
	if (regval == NULL) {
		FUNC0();
		return;
	}

	FUNC2(dpp, regval);
}