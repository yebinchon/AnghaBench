#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int valid; } ;
struct TYPE_19__ {int valid; } ;
struct TYPE_18__ {int valid; } ;
struct TYPE_15__ {int valid; } ;
struct TYPE_17__ {int valid; } ;
struct TYPE_12__ {int valid; } ;
struct encoder_info_frame {TYPE_11__ gamut; TYPE_8__ hdrsmd; TYPE_6__ spd; TYPE_2__ vsc; TYPE_4__ vendor; TYPE_10__ avi; } ;
struct TYPE_14__ {struct encoder_info_frame encoder_info_frame; } ;
struct pipe_ctx {TYPE_3__* stream; TYPE_1__ stream_res; } ;
typedef  enum signal_type { ____Placeholder_signal_type } signal_type ;
struct TYPE_16__ {int signal; } ;

/* Variables and functions */
 int SIGNAL_TYPE_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,struct pipe_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*) ; 

void FUNC8(struct pipe_ctx *pipe_ctx)
{
	enum signal_type signal = SIGNAL_TYPE_NONE;
	struct encoder_info_frame *info = &pipe_ctx->stream_res.encoder_info_frame;

	/* default all packets to invalid */
	info->avi.valid = false;
	info->gamut.valid = false;
	info->vendor.valid = false;
	info->spd.valid = false;
	info->hdrsmd.valid = false;
	info->vsc.valid = false;

	signal = pipe_ctx->stream->signal;

	/* HDMi and DP have different info packets*/
	if (FUNC1(signal)) {
		FUNC3(&info->avi, pipe_ctx);

		FUNC6(&info->vendor, pipe_ctx->stream);

		FUNC5(&info->spd, pipe_ctx->stream);

		FUNC4(&info->hdrsmd, pipe_ctx->stream);

	} else if (FUNC0(signal)) {
		FUNC7(&info->vsc, pipe_ctx->stream);

		FUNC5(&info->spd, pipe_ctx->stream);

		FUNC4(&info->hdrsmd, pipe_ctx->stream);
	}

	FUNC2(&info->gamut);
}