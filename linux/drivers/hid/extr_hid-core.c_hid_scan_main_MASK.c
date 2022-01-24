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
struct TYPE_2__ {int usage_index; int /*<<< orphan*/ * usage; } ;
struct hid_parser {TYPE_1__ local; } ;
struct hid_item {int tag; } ;
typedef  int __u32 ;

/* Variables and functions */
 int HID_MAIN_ITEM_CONSTANT ; 
#define  HID_MAIN_ITEM_TAG_BEGIN_COLLECTION 132 
#define  HID_MAIN_ITEM_TAG_END_COLLECTION 131 
#define  HID_MAIN_ITEM_TAG_FEATURE 130 
#define  HID_MAIN_ITEM_TAG_INPUT 129 
#define  HID_MAIN_ITEM_TAG_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (struct hid_parser*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_parser*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_parser*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hid_item*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hid_parser *parser, struct hid_item *item)
{
	__u32 data;
	int i;

	FUNC0(parser);

	data = FUNC4(item);

	switch (item->tag) {
	case HID_MAIN_ITEM_TAG_BEGIN_COLLECTION:
		FUNC1(parser, data & 0xff);
		break;
	case HID_MAIN_ITEM_TAG_END_COLLECTION:
		break;
	case HID_MAIN_ITEM_TAG_INPUT:
		/* ignore constant inputs, they will be ignored by hid-input */
		if (data & HID_MAIN_ITEM_CONSTANT)
			break;
		for (i = 0; i < parser->local.usage_index; i++)
			FUNC3(parser, parser->local.usage[i]);
		break;
	case HID_MAIN_ITEM_TAG_OUTPUT:
		break;
	case HID_MAIN_ITEM_TAG_FEATURE:
		for (i = 0; i < parser->local.usage_index; i++)
			FUNC2(parser, parser->local.usage[i]);
		break;
	}

	/* Reset the local parser environment */
	FUNC5(&parser->local, 0, sizeof(parser->local));

	return 0;
}