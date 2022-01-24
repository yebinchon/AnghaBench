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
typedef  enum dc_color_space_type { ____Placeholder_dc_color_space_type } dc_color_space_type ;
typedef  enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;

/* Variables and functions */
 int COLOR_SPACE_RGB_LIMITED_TYPE ; 
 int COLOR_SPACE_RGB_TYPE ; 
 int COLOR_SPACE_YCBCR2020_TYPE ; 
 int COLOR_SPACE_YCBCR601_LIMITED_TYPE ; 
 int COLOR_SPACE_YCBCR601_TYPE ; 
 int COLOR_SPACE_YCBCR709 ; 
 int COLOR_SPACE_YCBCR709_BLACK ; 
 int COLOR_SPACE_YCBCR709_BLACK_TYPE ; 
 int COLOR_SPACE_YCBCR709_LIMITED_TYPE ; 
 int COLOR_SPACE_YCBCR709_TYPE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

enum dc_color_space_type FUNC7(enum dc_color_space color_space)
{
	enum dc_color_space_type type = COLOR_SPACE_RGB_TYPE;

	if (FUNC1(color_space))
		type = COLOR_SPACE_RGB_TYPE;
	else if (FUNC0(color_space))
		type = COLOR_SPACE_RGB_LIMITED_TYPE;
	else if (FUNC4(color_space))
		type = COLOR_SPACE_YCBCR601_TYPE;
	else if (FUNC6(color_space))
		type = COLOR_SPACE_YCBCR709_TYPE;
	else if (FUNC3(color_space))
		type = COLOR_SPACE_YCBCR601_LIMITED_TYPE;
	else if (FUNC5(color_space))
		type = COLOR_SPACE_YCBCR709_LIMITED_TYPE;
	else if (FUNC2(color_space))
		type = COLOR_SPACE_YCBCR2020_TYPE;
	else if (color_space == COLOR_SPACE_YCBCR709)
		type = COLOR_SPACE_YCBCR709_BLACK_TYPE;
	else if (color_space == COLOR_SPACE_YCBCR709_BLACK)
		type = COLOR_SPACE_YCBCR709_BLACK_TYPE;
	return type;
}