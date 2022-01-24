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
struct wacom_features {scalar_t__ offset_bottom; scalar_t__ offset_top; scalar_t__ offset_right; scalar_t__ offset_left; } ;
struct wacom_wac {struct wacom_features features; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct input_dev {int /*<<< orphan*/  evbit; } ;
struct hid_usage {int type; void* code; int /*<<< orphan*/  hid; } ;
struct hid_field {int logical_minimum; int logical_maximum; } ;
typedef  int __u8 ;
typedef  void* __u16 ;

/* Variables and functions */
 int ABS_RZ ; 
#define  EV_ABS 131 
#define  EV_KEY 130 
#define  EV_MSC 129 
#define  EV_SW 128 
 unsigned int HID_DG_TWIST ; 
 unsigned int HID_GD_X ; 
 unsigned int HID_GD_Y ; 
 int /*<<< orphan*/  FUNC0 (struct hid_field*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,void*,int /*<<< orphan*/ ) ; 
 struct wacom* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,void*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int const,void*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct input_dev *input, struct hid_usage *usage,
		struct hid_field *field, __u8 type, __u16 code, int fuzz)
{
	struct wacom *wacom = FUNC2(input);
	struct wacom_wac *wacom_wac = &wacom->wacom_wac;
	struct wacom_features *features = &wacom_wac->features;
	int fmin = field->logical_minimum;
	int fmax = field->logical_maximum;
	unsigned int equivalent_usage = FUNC6(usage->hid);
	int resolution_code = code;

	if (equivalent_usage == HID_DG_TWIST) {
		resolution_code = ABS_RZ;
	}

	if (equivalent_usage == HID_GD_X) {
		fmin += features->offset_left;
		fmax -= features->offset_right;
	}
	if (equivalent_usage == HID_GD_Y) {
		fmin += features->offset_top;
		fmax -= features->offset_bottom;
	}

	usage->type = type;
	usage->code = code;

	FUNC5(type, input->evbit);

	switch (type) {
	case EV_ABS:
		FUNC3(input, code, fmin, fmax, fuzz, 0);
		FUNC1(input, code,
				  FUNC0(field, resolution_code));
		break;
	case EV_KEY:
		FUNC4(input, EV_KEY, code);
		break;
	case EV_MSC:
		FUNC4(input, EV_MSC, code);
		break;
	case EV_SW:
		FUNC4(input, EV_SW, code);
		break;
	}
}