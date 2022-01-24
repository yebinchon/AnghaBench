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
struct dm_buffer {int dummy; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block_manager {int /*<<< orphan*/  bufio; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {int /*<<< orphan*/  lock; scalar_t__ write_locked; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dm_block_manager*,int /*<<< orphan*/ ,struct buffer_aux*,struct dm_block_validator*) ; 
 struct buffer_aux* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_buffer**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_block*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct dm_block_manager *bm, dm_block_t b,
		    struct dm_block_validator *v,
		    struct dm_block **result)
{
	struct buffer_aux *aux;
	void *p;
	int r;

	p = FUNC6(bm->bufio, b, (struct dm_buffer **) result);
	if (FUNC0(p))
		return FUNC1(p);

	aux = FUNC5(FUNC9(*result));
	r = FUNC2(&aux->lock);
	if (FUNC10(r)) {
		FUNC7(FUNC9(*result));
		FUNC8(b, r);
		return r;
	}

	aux->write_locked = 0;

	r = FUNC4(bm, FUNC9(*result), aux, v);
	if (FUNC10(r)) {
		FUNC3(&aux->lock);
		FUNC7(FUNC9(*result));
		return r;
	}

	return 0;
}