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
struct dm_buffer {int /*<<< orphan*/  (* end_io ) (struct dm_buffer*,int /*<<< orphan*/ ) ;} ;
struct bio {int /*<<< orphan*/  bi_status; struct dm_buffer* bi_private; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct dm_buffer *b = bio->bi_private;
	blk_status_t status = bio->bi_status;
	FUNC0(bio);
	b->end_io(b, status);
}