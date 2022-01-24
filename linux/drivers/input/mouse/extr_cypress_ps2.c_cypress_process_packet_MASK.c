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
struct psmouse {struct cytp_data* private; struct input_dev* dev; } ;
struct input_mt_pos {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct input_dev {int dummy; } ;
struct cytp_report_data {int contact_cnt; int /*<<< orphan*/  middle; int /*<<< orphan*/  right; int /*<<< orphan*/  left; struct cytp_contact* contacts; } ;
struct cytp_data {int dummy; } ;
struct cytp_contact {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int CYTP_MAX_MT_SLOTS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,struct cytp_data*,struct cytp_report_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int*,struct input_mt_pos*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 

__attribute__((used)) static void FUNC9(struct psmouse *psmouse, bool zero_pkt)
{
	int i;
	struct input_dev *input = psmouse->dev;
	struct cytp_data *cytp = psmouse->private;
	struct cytp_report_data report_data;
	struct cytp_contact *contact;
	struct input_mt_pos pos[CYTP_MAX_MT_SLOTS];
	int slots[CYTP_MAX_MT_SLOTS];
	int n;

	FUNC0(psmouse, cytp, &report_data);

	n = report_data.contact_cnt;
	if (n > CYTP_MAX_MT_SLOTS)
		n = CYTP_MAX_MT_SLOTS;

	for (i = 0; i < n; i++) {
		contact = &report_data.contacts[i];
		pos[i].x = contact->x;
		pos[i].y = contact->y;
	}

	FUNC1(input, slots, pos, n, 0);

	for (i = 0; i < n; i++) {
		contact = &report_data.contacts[i];
		FUNC4(input, slots[i]);
		FUNC3(input, MT_TOOL_FINGER, true);
		FUNC6(input, ABS_MT_POSITION_X, contact->x);
		FUNC6(input, ABS_MT_POSITION_Y, contact->y);
		FUNC6(input, ABS_MT_PRESSURE, contact->z);
	}

	FUNC5(input);

	FUNC2(input, report_data.contact_cnt);

	FUNC7(input, BTN_LEFT, report_data.left);
	FUNC7(input, BTN_RIGHT, report_data.right);
	FUNC7(input, BTN_MIDDLE, report_data.middle);

	FUNC8(input);
}