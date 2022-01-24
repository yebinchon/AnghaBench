#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ DSC; } ;
struct TYPE_4__ {TYPE_1__ flags; } ;
struct dc_stream_state {TYPE_2__ timing; } ;
struct dc_state {int dummy; } ;
struct dc {int dummy; } ;
typedef  enum dc_status { ____Placeholder_dc_status } dc_status ;

/* Variables and functions */
 int DC_ERROR_UNEXPECTED ; 
 int DC_OK ; 
 int FUNC0 (struct dc*,struct dc_state*,struct dc_stream_state*) ; 
 int FUNC1 (struct dc*,struct dc_state*,struct dc_stream_state*) ; 
 int FUNC2 (struct dc*,struct dc_state*,struct dc_stream_state*) ; 
 int FUNC3 (struct dc*,struct dc_state*,struct dc_stream_state*) ; 

enum dc_status FUNC4(struct dc *dc, struct dc_state *new_ctx, struct dc_stream_state *dc_stream)
{
	enum dc_status result = DC_ERROR_UNEXPECTED;

	result = FUNC3(dc, new_ctx, dc_stream);

	if (result == DC_OK)
		result = FUNC2(dc, new_ctx, dc_stream);

#ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
	/* Get a DSC if required and available */
	if (result == DC_OK && dc_stream->timing.flags.DSC)
		result = add_dsc_to_stream_resource(dc, new_ctx, dc_stream);
#endif

	if (result == DC_OK)
		result = FUNC1(dc, new_ctx, dc_stream);

	return result;
}