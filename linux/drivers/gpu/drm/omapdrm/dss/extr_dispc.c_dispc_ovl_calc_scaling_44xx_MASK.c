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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct videomode {int dummy; } ;
struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int max_line_width; int max_downscale; unsigned long (* calc_core_clk ) (unsigned long,int,int,int,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ DRM_FORMAT_NV12 ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int FUNC2 (struct dispc_device*) ; 
 unsigned long FUNC3 (unsigned long,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct dispc_device *dispc,
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
	u16 in_width, in_width_max;
	int decim_x_min = *decim_x;
	u16 in_height = height / *decim_y;
	const int maxsinglelinewidth = dispc->feat->max_line_width;
	const int maxdownscale = dispc->feat->max_downscale;

	if (mem_to_mem) {
		in_width_max = out_width * maxdownscale;
	} else {
		in_width_max = FUNC2(dispc)
			     / FUNC0(pclk, out_width);
	}

	*decim_x = FUNC0(width, in_width_max);

	*decim_x = *decim_x > decim_x_min ? *decim_x : decim_x_min;
	if (*decim_x > *x_predecim)
		return -EINVAL;

	do {
		in_width = width / *decim_x;
	} while (*decim_x <= *x_predecim &&
			in_width > maxsinglelinewidth && ++*decim_x);

	if (in_width > maxsinglelinewidth) {
		FUNC1("Cannot scale width exceeds max line width\n");
		return -EINVAL;
	}

	if (*decim_x > 4 && fourcc != DRM_FORMAT_NV12) {
		/*
		 * Let's disable all scaling that requires horizontal
		 * decimation with higher factor than 4, until we have
		 * better estimates of what we can and can not
		 * do. However, NV12 color format appears to work Ok
		 * with all decimation factors.
		 *
		 * When decimating horizontally by more that 4 the dss
		 * is not able to fetch the data in burst mode. When
		 * this happens it is hard to tell if there enough
		 * bandwidth. Despite what theory says this appears to
		 * be true also for 16-bit color formats.
		 */
		FUNC1("Not enough bandwidth, too much downscaling (x-decimation factor %d > 4)\n", *decim_x);

		return -EINVAL;
	}

	*core_clk = dispc->feat->calc_core_clk(pclk, in_width, in_height,
				out_width, out_height, mem_to_mem);
	return 0;
}