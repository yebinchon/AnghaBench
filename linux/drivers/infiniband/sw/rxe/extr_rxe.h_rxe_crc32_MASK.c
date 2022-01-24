#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct rxe_dev {int /*<<< orphan*/  tfm; } ;
struct TYPE_5__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC3 (TYPE_1__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_1__* shash ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline u32 FUNC7(struct rxe_dev *rxe,
			    u32 crc, void *next, size_t len)
{
	u32 retval;
	int err;

	FUNC0(shash, rxe->tfm);

	shash->tfm = rxe->tfm;
	*(u32 *)FUNC5(shash) = crc;
	err = FUNC3(shash, next, len);
	if (FUNC6(err)) {
		FUNC4("failed crc calculation, err: %d\n", err);
		return FUNC2(crc, next, len);
	}

	retval = *(u32 *)FUNC5(shash);
	FUNC1(FUNC5(shash));
	return retval;
}