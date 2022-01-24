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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  wrid_low; int /*<<< orphan*/  wrid_hi; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;
struct t4_cqe {int /*<<< orphan*/  bits_type_ts; TYPE_2__ u; int /*<<< orphan*/  len; int /*<<< orphan*/  header; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg, struct t4_cqe *cqe, u16 idx,
		    const char *qstr)
{
	if (FUNC2(msg, qstr, idx))
		goto err;
	if (FUNC3(msg, "header",
					 FUNC0(cqe->header)))
		goto err;
	if (FUNC2(msg, "len", FUNC0(cqe->len)))
		goto err;
	if (FUNC3(msg, "wrid_hi",
					 FUNC0(cqe->u.gen.wrid_hi)))
		goto err;
	if (FUNC3(msg, "wrid_low",
					 FUNC0(cqe->u.gen.wrid_low)))
		goto err;
	if (FUNC4(msg, "bits_type_ts",
					 FUNC1(cqe->bits_type_ts)))
		goto err;

	return 0;

err:
	return -EMSGSIZE;
}