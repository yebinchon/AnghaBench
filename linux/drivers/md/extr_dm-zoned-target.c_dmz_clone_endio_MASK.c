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
struct dmz_bioctx {int /*<<< orphan*/  bio; } ;
struct bio {int /*<<< orphan*/  bi_status; struct dmz_bioctx* bi_private; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bio *clone)
{
	struct dmz_bioctx *bioctx = clone->bi_private;
	blk_status_t status = clone->bi_status;

	FUNC0(clone);
	FUNC1(bioctx->bio, status);
}