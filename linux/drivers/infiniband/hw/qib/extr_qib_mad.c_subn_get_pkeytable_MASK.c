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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qib_devdata {int dummy; } ;
struct ib_smp {int /*<<< orphan*/  status; scalar_t__ data; int /*<<< orphan*/  attr_mod; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC5 (struct qib_devdata*) ; 
 int FUNC6 (struct ib_smp*) ; 

__attribute__((used)) static int FUNC7(struct ib_smp *smp, struct ib_device *ibdev,
			      u8 port)
{
	u32 startpx = 32 * (FUNC0(smp->attr_mod) & 0xffff);
	u16 *p = (u16 *) smp->data;
	__be16 *q = (__be16 *) smp->data;

	/* 64 blocks of 32 16-bit P_Key entries */

	FUNC4(smp->data, 0, sizeof(smp->data));
	if (startpx == 0) {
		struct qib_devdata *dd = FUNC2(ibdev);
		unsigned i, n = FUNC5(dd);

		FUNC3(dd, port, p);

		for (i = 0; i < n; i++)
			q[i] = FUNC1(p[i]);
	} else
		smp->status |= IB_SMP_INVALID_FIELD;

	return FUNC6(smp);
}