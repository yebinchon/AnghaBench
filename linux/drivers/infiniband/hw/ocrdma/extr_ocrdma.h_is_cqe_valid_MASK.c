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
struct ocrdma_cqe {int /*<<< orphan*/  flags_status_srcqpn; } ;
struct ocrdma_cq {int phase; } ;

/* Variables and functions */
 int OCRDMA_CQE_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct ocrdma_cq *cq, struct ocrdma_cqe *cqe)
{
	int cqe_valid;
	cqe_valid = FUNC0(cqe->flags_status_srcqpn) & OCRDMA_CQE_VALID;
	return (cqe_valid == cq->phase);
}