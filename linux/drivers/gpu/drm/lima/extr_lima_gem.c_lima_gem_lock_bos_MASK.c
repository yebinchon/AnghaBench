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
typedef  int u32 ;
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_4__ {TYPE_1__* resv; } ;
struct lima_bo {TYPE_2__ gem; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EDEADLK ; 
 int /*<<< orphan*/  reservation_ww_class ; 
 int /*<<< orphan*/  FUNC0 (struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ww_acquire_ctx*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct lima_bo **bos, u32 nr_bos,
			     struct ww_acquire_ctx *ctx)
{
	int i, ret = 0, contended, slow_locked = -1;

	FUNC2(ctx, &reservation_ww_class);

retry:
	for (i = 0; i < nr_bos; i++) {
		if (i == slow_locked) {
			slow_locked = -1;
			continue;
		}

		ret = FUNC3(&bos[i]->gem.resv->lock, ctx);
		if (ret < 0) {
			contended = i;
			goto err;
		}
	}

	FUNC0(ctx);
	return 0;

err:
	for (i--; i >= 0; i--)
		FUNC5(&bos[i]->gem.resv->lock);

	if (slow_locked >= 0)
		FUNC5(&bos[slow_locked]->gem.resv->lock);

	if (ret == -EDEADLK) {
		/* we lost out in a seqno race, lock and retry.. */
		ret = FUNC4(
			&bos[contended]->gem.resv->lock, ctx);
		if (!ret) {
			slow_locked = contended;
			goto retry;
		}
	}
	FUNC1(ctx);

	return ret;
}