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
struct output_pixel_processor {int dummy; } ;
struct clamping_and_pixel_encoding_params {scalar_t__ pixel_encoding; } ;
struct bit_depth_reduction_params {int dummy; } ;

/* Variables and functions */
 scalar_t__ PIXEL_ENCODING_YCBCR420 ; 
 int /*<<< orphan*/  FUNC0 (struct output_pixel_processor*,struct bit_depth_reduction_params*) ; 
 int /*<<< orphan*/  FUNC1 (struct output_pixel_processor*,struct clamping_and_pixel_encoding_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct output_pixel_processor*) ; 
 int /*<<< orphan*/  FUNC3 (struct output_pixel_processor*) ; 

void FUNC4(
	struct output_pixel_processor *opp,
	struct bit_depth_reduction_params *fmt_bit_depth,
	struct clamping_and_pixel_encoding_params *clamping)
{
	/* dithering is affected by <CrtcSourceSelect>, hence should be
	 * programmed afterwards */

	if (clamping->pixel_encoding == PIXEL_ENCODING_YCBCR420)
		FUNC2(opp);

	FUNC0(
		opp,
		fmt_bit_depth);

	FUNC1(
		opp,
		clamping);

	if (clamping->pixel_encoding == PIXEL_ENCODING_YCBCR420)
		FUNC3(opp);

	return;
}