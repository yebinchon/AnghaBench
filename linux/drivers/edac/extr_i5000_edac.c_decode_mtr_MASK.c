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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(int slot_row, u16 mtr)
{
	int ans;

	ans = FUNC0(mtr);

	FUNC6(2, "\tMTR%d=0x%x:  DIMMs are %sPresent\n",
		 slot_row, mtr, ans ? "" : "NOT ");
	if (!ans)
		return;

	FUNC6(2, "\t\tWIDTH: x%d\n", FUNC5(mtr));
	FUNC6(2, "\t\tNUMBANK: %d bank(s)\n", FUNC4(mtr));
	FUNC6(2, "\t\tNUMRANK: %s\n",
		 FUNC2(mtr) ? "double" : "single");
	FUNC6(2, "\t\tNUMROW: %s\n",
		 FUNC3(mtr) == 0 ? "8,192 - 13 rows" :
		 FUNC3(mtr) == 1 ? "16,384 - 14 rows" :
		 FUNC3(mtr) == 2 ? "32,768 - 15 rows" :
		 "reserved");
	FUNC6(2, "\t\tNUMCOL: %s\n",
		 FUNC1(mtr) == 0 ? "1,024 - 10 columns" :
		 FUNC1(mtr) == 1 ? "2,048 - 11 columns" :
		 FUNC1(mtr) == 2 ? "4,096 - 12 columns" :
		 "reserved");
}