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
typedef  int u16 ;
struct mlx5_sig_err_cqe {int /*<<< orphan*/  mkey; int /*<<< orphan*/  err_offset; int /*<<< orphan*/  actual_trans_sig; int /*<<< orphan*/  expected_trans_sig; int /*<<< orphan*/  actual_reftag; int /*<<< orphan*/  expected_reftag; int /*<<< orphan*/  syndrome; } ;
struct ib_sig_err {int expected; int actual; int key; int /*<<< orphan*/  sig_err_offset; int /*<<< orphan*/  err_type; } ;

/* Variables and functions */
 int APPTAG_ERR ; 
 int GUARD_ERR ; 
 int /*<<< orphan*/  IB_SIG_BAD_APPTAG ; 
 int /*<<< orphan*/  IB_SIG_BAD_GUARD ; 
 int /*<<< orphan*/  IB_SIG_BAD_REFTAG ; 
 int REFTAG_ERR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct mlx5_sig_err_cqe *cqe,
			     struct ib_sig_err *item)
{
	u16 syndrome = FUNC0(cqe->syndrome);

#define GUARD_ERR   (1 << 13)
#define APPTAG_ERR  (1 << 12)
#define REFTAG_ERR  (1 << 11)

	if (syndrome & GUARD_ERR) {
		item->err_type = IB_SIG_BAD_GUARD;
		item->expected = FUNC1(cqe->expected_trans_sig) >> 16;
		item->actual = FUNC1(cqe->actual_trans_sig) >> 16;
	} else
	if (syndrome & REFTAG_ERR) {
		item->err_type = IB_SIG_BAD_REFTAG;
		item->expected = FUNC1(cqe->expected_reftag);
		item->actual = FUNC1(cqe->actual_reftag);
	} else
	if (syndrome & APPTAG_ERR) {
		item->err_type = IB_SIG_BAD_APPTAG;
		item->expected = FUNC1(cqe->expected_trans_sig) & 0xffff;
		item->actual = FUNC1(cqe->actual_trans_sig) & 0xffff;
	} else {
		FUNC3("Got signature completion error with bad syndrome %04x\n",
		       syndrome);
	}

	item->sig_err_offset = FUNC2(cqe->err_offset);
	item->key = FUNC1(cqe->mkey);
}