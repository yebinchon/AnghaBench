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
typedef  int /*<<< orphan*/  u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hfi1_devdata *dd, int what,
			   const u8 *data, int nbytes)
{
	int qw_size = nbytes / 8;
	int i;

	if (((unsigned long)data & 0x7) == 0) {
		/* aligned */
		u64 *ptr = (u64 *)data;

		for (i = 0; i < qw_size; i++, ptr++)
			FUNC1(dd, what + (8 * i), *ptr);
	} else {
		/* not aligned */
		for (i = 0; i < qw_size; i++, data += 8) {
			u64 value;

			FUNC0(&value, data, 8);
			FUNC1(dd, what + (8 * i), value);
		}
	}
}