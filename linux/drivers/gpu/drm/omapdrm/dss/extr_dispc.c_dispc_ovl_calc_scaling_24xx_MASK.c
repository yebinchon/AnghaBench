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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct videomode {int dummy; } ;
struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int max_line_width; unsigned long (* calc_core_clk ) (unsigned long,int,int,int,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned long FUNC1 (struct dispc_device*) ; 
 int FUNC2 (int,int) ; 
 unsigned long FUNC3 (unsigned long,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct dispc_device *dispc,
				       unsigned long pclk, unsigned long lclk,
				       const struct videomode *vm,
				       u16 width, u16 height,
				       u16 out_width, u16 out_height,
				       u32 fourcc, bool *five_taps,
				       int *x_predecim, int *y_predecim,
				       int *decim_x, int *decim_y,
				       u16 pos_x, unsigned long *core_clk,
				       bool mem_to_mem)
{
	int error;
	u16 in_width, in_height;
	int min_factor = FUNC2(*decim_x, *decim_y);
	const int maxsinglelinewidth = dispc->feat->max_line_width;

	*five_taps = false;

	do {
		in_height = height / *decim_y;
		in_width = width / *decim_x;
		*core_clk = dispc->feat->calc_core_clk(pclk, in_width,
				in_height, out_width, out_height, mem_to_mem);
		error = (in_width > maxsinglelinewidth || !*core_clk ||
			*core_clk > FUNC1(dispc));
		if (error) {
			if (*decim_x == *decim_y) {
				*decim_x = min_factor;
				++*decim_y;
			} else {
				FUNC4(*decim_x, *decim_y);
				if (*decim_x < *decim_y)
					++*decim_x;
			}
		}
	} while (*decim_x <= *x_predecim && *decim_y <= *y_predecim && error);

	if (error) {
		FUNC0("failed to find scaling settings\n");
		return -EINVAL;
	}

	if (in_width > maxsinglelinewidth) {
		FUNC0("Cannot scale max input width exceeded\n");
		return -EINVAL;
	}
	return 0;
}