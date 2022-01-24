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

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  KERNCZ_IMC_IDX ; 
 int MAX_TIMEOUT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	int timeout = MAX_TIMEOUT;

	if (!FUNC3(KERNCZ_IMC_IDX, 2, "smbus_kerncz_imc"))
		return -EBUSY;

	/* clear response register */
	FUNC1(0x82, 0x00);
	/* request ownership flag */
	FUNC1(0x83, 0xB4);
	/* kick off IMC Mailbox command 96 */
	FUNC1(0x80, 0x96);

	while (timeout--) {
		if (FUNC0(0x82) == 0xfa) {
			FUNC2(KERNCZ_IMC_IDX, 2);
			return 0;
		}
		FUNC4(1000, 2000);
	}

	FUNC2(KERNCZ_IMC_IDX, 2);
	return -ETIMEDOUT;
}