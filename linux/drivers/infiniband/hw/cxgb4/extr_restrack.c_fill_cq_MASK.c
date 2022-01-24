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
struct t4_cq {int /*<<< orphan*/  flags; int /*<<< orphan*/  bits_type_ts; int /*<<< orphan*/  error; int /*<<< orphan*/  gen; int /*<<< orphan*/  vector; int /*<<< orphan*/  sw_in_use; int /*<<< orphan*/  sw_pidx; int /*<<< orphan*/  sw_cidx; int /*<<< orphan*/  cidx_inc; int /*<<< orphan*/  cidx; int /*<<< orphan*/  size; int /*<<< orphan*/  memsize; int /*<<< orphan*/  cqid; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *msg, struct t4_cq *cq)
{
	if (FUNC1(msg, "cqid", cq->cqid))
		goto err;
	if (FUNC1(msg, "memsize", cq->memsize))
		goto err;
	if (FUNC1(msg, "size", cq->size))
		goto err;
	if (FUNC1(msg, "cidx", cq->cidx))
		goto err;
	if (FUNC1(msg, "cidx_inc", cq->cidx_inc))
		goto err;
	if (FUNC1(msg, "sw_cidx", cq->sw_cidx))
		goto err;
	if (FUNC1(msg, "sw_pidx", cq->sw_pidx))
		goto err;
	if (FUNC1(msg, "sw_in_use", cq->sw_in_use))
		goto err;
	if (FUNC1(msg, "vector", cq->vector))
		goto err;
	if (FUNC1(msg, "gen", cq->gen))
		goto err;
	if (FUNC1(msg, "error", cq->error))
		goto err;
	if (FUNC2(msg, "bits_type_ts",
					 FUNC0(cq->bits_type_ts)))
		goto err;
	if (FUNC2(msg, "flags", cq->flags))
		goto err;

	return 0;

err:
	return -EMSGSIZE;
}