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
struct wacom_features {scalar_t__ type; } ;
struct wacom_wac {struct wacom_features features; struct input_dev* pad_input; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 scalar_t__ INTUOSHT ; 
 scalar_t__ INTUOSHT2 ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct wacom_wac *wacom, unsigned char *data)
{
	struct input_dev *input = wacom->pad_input;
	struct wacom_features *features = &wacom->features;

	if (features->type == INTUOSHT || features->type == INTUOSHT2) {
		FUNC0(input, BTN_LEFT, (data[1] & 0x02) != 0);
		FUNC0(input, BTN_BACK, (data[1] & 0x08) != 0);
	} else {
		FUNC0(input, BTN_BACK, (data[1] & 0x02) != 0);
		FUNC0(input, BTN_LEFT, (data[1] & 0x08) != 0);
	}
	FUNC0(input, BTN_FORWARD, (data[1] & 0x04) != 0);
	FUNC0(input, BTN_RIGHT, (data[1] & 0x01) != 0);
}