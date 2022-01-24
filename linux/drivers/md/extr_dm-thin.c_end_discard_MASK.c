#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct discard_op {TYPE_1__* parent_bio; int /*<<< orphan*/  plug; scalar_t__ bio; } ;
struct TYPE_3__ {scalar_t__ bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct discard_op *op, int r)
{
	if (op->bio) {
		/*
		 * Even if one of the calls to issue_discard failed, we
		 * need to wait for the chain to complete.
		 */
		FUNC0(op->bio, op->parent_bio);
		FUNC2(op->bio, REQ_OP_DISCARD, 0);
		FUNC5(op->bio);
	}

	FUNC3(&op->plug);

	/*
	 * Even if r is set, there could be sub discards in flight that we
	 * need to wait for.
	 */
	if (r && !op->parent_bio->bi_status)
		op->parent_bio->bi_status = FUNC4(r);
	FUNC1(op->parent_bio);
}