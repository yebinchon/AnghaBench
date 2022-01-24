#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bi_size; } ;
struct bio {int /*<<< orphan*/ * bi_private; TYPE_1__ bi_iter; int /*<<< orphan*/  bi_inline_vecs; } ;
struct TYPE_5__ {struct bio bio; } ;
struct moving_io {int /*<<< orphan*/  cl; TYPE_3__* w; TYPE_2__ bio; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOPRIO_CLASS_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SECTORS ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct moving_io *io)
{
	struct bio *bio = &io->bio.bio;

	FUNC5(bio, bio->bi_inline_vecs,
		 FUNC0(FUNC2(&io->w->key), PAGE_SECTORS));
	FUNC4(bio);
	FUNC6(bio, FUNC1(IOPRIO_CLASS_IDLE, 0));

	bio->bi_iter.bi_size	= FUNC2(&io->w->key) << 9;
	bio->bi_private		= &io->cl;
	FUNC3(bio, NULL);
}