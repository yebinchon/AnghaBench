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
typedef  int /*<<< orphan*/  u16 ;
struct sdma_txreq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sdma_txreq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (struct sdma_txreq*,int)) ; 

__attribute__((used)) static inline int FUNC1(
	struct sdma_txreq *tx,
	u16 flags,
	u16 tlen,
	void (*cb)(struct sdma_txreq *, int))
{
	return FUNC0(tx, flags, tlen, 0, 0, NULL, 0, cb);
}