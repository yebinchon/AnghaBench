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
struct closure {int dummy; } ;
struct bio {struct cached_dev* bi_private; int /*<<< orphan*/  bi_end_io; } ;
struct cached_dev {int /*<<< orphan*/  sb; int /*<<< orphan*/  bdev; int /*<<< orphan*/  sb_write_mutex; struct bio sb_bio; struct closure sb_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  bch_write_bdev_super_unlock ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct closure*) ; 
 int /*<<< orphan*/  FUNC4 (struct closure*,struct closure*) ; 
 int /*<<< orphan*/  FUNC5 (struct closure*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_bdev_super_endio ; 

void FUNC7(struct cached_dev *dc, struct closure *parent)
{
	struct closure *cl = &dc->sb_write;
	struct bio *bio = &dc->sb_bio;

	FUNC6(&dc->sb_write_mutex);
	FUNC4(cl, parent);

	FUNC1(bio);
	FUNC2(bio, dc->bdev);
	bio->bi_end_io	= write_bdev_super_endio;
	bio->bi_private = dc;

	FUNC3(cl);
	/* I/O request sent to backing device */
	FUNC0(&dc->sb, bio);

	FUNC5(cl, bch_write_bdev_super_unlock);
}