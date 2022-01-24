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
struct r5l_recovery_ctx {scalar_t__ data_only_stripes; scalar_t__ data_parity_stripes; int /*<<< orphan*/  meta_page; scalar_t__ seq; int /*<<< orphan*/  pos; int /*<<< orphan*/  cached_list; } ;
struct r5l_log {int /*<<< orphan*/  last_checkpoint; scalar_t__ seq; int /*<<< orphan*/  log_start; int /*<<< orphan*/  next_checkpoint; scalar_t__ last_cp_seq; TYPE_1__* rdev; } ;
struct mddev {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {struct mddev* mddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_SECTORS ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r5l_recovery_ctx*) ; 
 struct r5l_recovery_ctx* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 int FUNC9 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 scalar_t__ FUNC10 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct r5l_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC13 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct r5l_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct r5l_log*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct r5l_log *log)
{
	struct mddev *mddev = log->rdev->mddev;
	struct r5l_recovery_ctx *ctx;
	int ret;
	sector_t pos;

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->pos = log->last_checkpoint;
	ctx->seq = log->last_cp_seq;
	FUNC0(&ctx->cached_list);
	ctx->meta_page = FUNC2(GFP_KERNEL);

	if (!ctx->meta_page) {
		ret =  -ENOMEM;
		goto meta_page;
	}

	if (FUNC12(log, ctx) != 0) {
		ret = -ENOMEM;
		goto ra_pool;
	}

	ret = FUNC9(log, ctx);

	if (ret)
		goto error;

	pos = ctx->pos;
	ctx->seq += 10000;

	if ((ctx->data_only_stripes == 0) && (ctx->data_parity_stripes == 0))
		FUNC7("md/raid:%s: starting from clean shutdown\n",
			 FUNC5(mddev));
	else
		FUNC7("md/raid:%s: recovering %d data-only stripes and %d data-parity stripes\n",
			 FUNC5(mddev), ctx->data_only_stripes,
			 ctx->data_parity_stripes);

	if (ctx->data_only_stripes == 0) {
		log->next_checkpoint = ctx->pos;
		FUNC11(log, ctx->pos, ctx->seq++);
		ctx->pos = FUNC14(log, ctx->pos, BLOCK_SECTORS);
	} else if (FUNC10(log, ctx)) {
		FUNC6("md/raid:%s: failed to rewrite stripes to journal\n",
		       FUNC5(mddev));
		ret =  -EIO;
		goto error;
	}

	log->log_start = ctx->pos;
	log->seq = ctx->seq;
	log->last_checkpoint = pos;
	FUNC15(log, pos);

	FUNC8(log, ctx);
	ret = 0;
error:
	FUNC13(log, ctx);
ra_pool:
	FUNC1(ctx->meta_page);
meta_page:
	FUNC3(ctx);
	return ret;
}