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
typedef  int u32 ;
struct hideep_ts {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int HIDEEP_FLASH_PIO_SIG ; 
 int HIDEEP_NVM_PAGE_SIZE ; 
 int HIDEEP_PERASE ; 
 int HIDEEP_WRONLY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (struct hideep_ts*) ; 
 int /*<<< orphan*/  FUNC5 (struct hideep_ts*,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct hideep_ts *ts, u32 addr,
			       const __be32 *ucode, size_t xfer_count)
{
	u32 val;
	int error;

	error = FUNC4(ts);
	if (error)
		return -EBUSY;

	addr &= ~(HIDEEP_NVM_PAGE_SIZE - 1);

	FUNC1(0);
	FUNC1(1);

	/* erase page */
	FUNC2(HIDEEP_PERASE | addr, 0xFFFFFFFF);

	FUNC1(0);

	error = FUNC4(ts);
	if (error)
		return -EBUSY;

	/* write page */
	FUNC1(1);

	val = FUNC3(ucode[0]);
	FUNC2(HIDEEP_WRONLY | addr, val);

	FUNC5(ts, HIDEEP_FLASH_PIO_SIG | HIDEEP_WRONLY,
			 ucode, xfer_count);

	val = FUNC3(ucode[xfer_count - 1]);
	FUNC2(124, val);

	FUNC1(0);

	FUNC6(1000, 1100);

	error = FUNC4(ts);
	if (error)
		return -EBUSY;

	FUNC0();

	return 0;
}