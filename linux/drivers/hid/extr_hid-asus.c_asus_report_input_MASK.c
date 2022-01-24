#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct asus_drvdata {int /*<<< orphan*/  input; TYPE_1__* tp; } ;
struct TYPE_2__ {int contact_size; int max_contacts; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int BTN_LEFT_MASK ; 
 int CONTACT_TOOL_TYPE_MASK ; 
 int MT_TOOL_FINGER ; 
 int MT_TOOL_PALM ; 
 int /*<<< orphan*/  FUNC1 (struct asus_drvdata*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_drvdata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct asus_drvdata *drvdat, u8 *data, int size)
{
	int i, toolType = MT_TOOL_FINGER;
	u8 *contactData = data + 2;

	if (size != 3 + drvdat->tp->contact_size * drvdat->tp->max_contacts)
		return 0;

	for (i = 0; i < drvdat->tp->max_contacts; i++) {
		bool down = !!(data[1] & FUNC0(i+3));

		if (drvdat->tp->contact_size >= 5)
			toolType = contactData[3] & CONTACT_TOOL_TYPE_MASK ?
						MT_TOOL_PALM : MT_TOOL_FINGER;

		FUNC4(drvdat->input, i);
		FUNC3(drvdat->input, toolType, down);

		if (down) {
			FUNC1(drvdat, toolType, contactData);
			contactData += drvdat->tp->contact_size;
		}
	}

	FUNC6(drvdat->input, BTN_LEFT, data[1] & BTN_LEFT_MASK);
	FUNC2(drvdat);

	FUNC5(drvdat->input);
	FUNC7(drvdat->input);

	return 1;
}