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
 unsigned long FUNC1 (unsigned long,struct videomode const*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned long,unsigned long,struct videomode const*,int,int,int,int,int,int) ; 
 unsigned long FUNC3 (struct dispc_device*) ; 
 unsigned long FUNC4 (unsigned long,int,int,int,int,int) ; 

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
	const int maxsinglelinewidth = dispc->feat->max_line_width;

	do {
		in_height = height / *decim_y;
		in_width = width / *decim_x;
		*five_taps = in_height > out_height;

		if (in_width > maxsinglelinewidth)
			if (in_height > out_height &&
						in_height < out_height * 2)
				*five_taps = false;
again:
		if (*five_taps)
			*core_clk = FUNC1(pclk, vm,
						in_width, in_height, out_width,
						out_height, fourcc);
		else
			*core_clk = dispc->feat->calc_core_clk(pclk, in_width,
					in_height, out_width, out_height,
					mem_to_mem);

		error = FUNC2(pclk, lclk, vm,
				pos_x, in_width, in_height, out_width,
				out_height, *five_taps);
		if (error && *five_taps) {
			*five_taps = false;
			goto again;
		}

		error = (error || in_width > maxsinglelinewidth * 2 ||
			(in_width > maxsinglelinewidth && *five_taps) ||
			!*core_clk || *core_clk > FUNC3(dispc));

		if (!error) {
			/* verify that we're inside the limits of scaler */
			if (in_width / 4 > out_width)
					error = 1;

			if (*five_taps) {
				if (in_height / 4 > out_height)
					error = 1;
			} else {
				if (in_height / 2 > out_height)
					error = 1;
			}
		}

		if (error)
			++*decim_y;
	} while (*decim_x <= *x_predecim && *decim_y <= *y_predecim && error);

	if (error) {
		FUNC0("failed to find scaling settings\n");
		return -EINVAL;
	}

	if (FUNC2(pclk, lclk, vm, pos_x, in_width,
				in_height, out_width, out_height, *five_taps)) {
			FUNC0("horizontal timing too tight\n");
			return -EINVAL;
	}

	if (in_width > (maxsinglelinewidth * 2)) {
		FUNC0("Cannot setup scaling\n");
		FUNC0("width exceeds maximum width possible\n");
		return -EINVAL;
	}

	if (in_width > maxsinglelinewidth && *five_taps) {
		FUNC0("cannot setup scaling with five taps\n");
		return -EINVAL;
	}
	return 0;
}