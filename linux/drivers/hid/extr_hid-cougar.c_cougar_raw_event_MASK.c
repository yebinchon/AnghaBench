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
typedef  unsigned char u8 ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;
struct cougar_shared {int /*<<< orphan*/  input; int /*<<< orphan*/  enabled; } ;
struct cougar {int /*<<< orphan*/  special_intf; struct cougar_shared* shared; } ;

/* Variables and functions */
 size_t COUGAR_FIELD_ACTION ; 
 size_t COUGAR_FIELD_CODE ; 
 int EPERM ; 
 int /*<<< orphan*/  EV_KEY ; 
 char** cougar_mapping ; 
 struct cougar* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, struct hid_report *report,
			    u8 *data, int size)
{
	struct cougar *cougar;
	struct cougar_shared *shared;
	unsigned char code, action;
	int i;

	cougar = FUNC0(hdev);
	shared = cougar->shared;
	if (!cougar->special_intf || !shared)
		return 0;

	if (!shared->enabled || !shared->input)
		return -EPERM;

	code = data[COUGAR_FIELD_CODE];
	action = data[COUGAR_FIELD_ACTION];
	for (i = 0; cougar_mapping[i][0]; i++) {
		if (code == cougar_mapping[i][0]) {
			FUNC2(shared->input, EV_KEY,
				    cougar_mapping[i][1], action);
			FUNC3(shared->input);
			return -EPERM;
		}
	}
	/* Avoid warnings on the same unmapped key twice */
	if (action != 0)
		FUNC1(hdev, "unmapped special key code %0x: ignoring\n", code);
	return -EPERM;
}