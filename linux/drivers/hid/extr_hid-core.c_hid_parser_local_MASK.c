#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int delimiter_depth; int delimiter_branch; unsigned int usage_minimum; unsigned int usage_index; } ;
struct hid_parser {TYPE_1__ local; TYPE_2__* device; } ;
struct hid_item {int tag; int /*<<< orphan*/  size; } ;
typedef  unsigned int __u32 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  HID_LOCAL_ITEM_TAG_DELIMITER 131 
#define  HID_LOCAL_ITEM_TAG_USAGE 130 
#define  HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM 129 
#define  HID_LOCAL_ITEM_TAG_USAGE_MINIMUM 128 
 unsigned int HID_MAX_USAGES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hid_parser*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 unsigned int FUNC5 (struct hid_item*) ; 

__attribute__((used)) static int FUNC6(struct hid_parser *parser, struct hid_item *item)
{
	__u32 data;
	unsigned n;
	__u32 count;

	data = FUNC5(item);

	switch (item->tag) {
	case HID_LOCAL_ITEM_TAG_DELIMITER:

		if (data) {
			/*
			 * We treat items before the first delimiter
			 * as global to all usage sets (branch 0).
			 * In the moment we process only these global
			 * items and the first delimiter set.
			 */
			if (parser->local.delimiter_depth != 0) {
				FUNC3(parser->device, "nested delimiters\n");
				return -1;
			}
			parser->local.delimiter_depth++;
			parser->local.delimiter_branch++;
		} else {
			if (parser->local.delimiter_depth < 1) {
				FUNC3(parser->device, "bogus close delimiter\n");
				return -1;
			}
			parser->local.delimiter_depth--;
		}
		return 0;

	case HID_LOCAL_ITEM_TAG_USAGE:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		return FUNC2(parser, data, item->size);

	case HID_LOCAL_ITEM_TAG_USAGE_MINIMUM:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		parser->local.usage_minimum = data;
		return 0;

	case HID_LOCAL_ITEM_TAG_USAGE_MAXIMUM:

		if (parser->local.delimiter_branch > 1) {
			FUNC0("alternative usage ignored\n");
			return 0;
		}

		count = data - parser->local.usage_minimum;
		if (count + parser->local.usage_index >= HID_MAX_USAGES) {
			/*
			 * We do not warn if the name is not set, we are
			 * actually pre-scanning the device.
			 */
			if (FUNC1(&parser->device->dev))
				FUNC4(parser->device,
					 "ignoring exceeding usage max\n");
			data = HID_MAX_USAGES - parser->local.usage_index +
				parser->local.usage_minimum - 1;
			if (data <= 0) {
				FUNC3(parser->device,
					"no more usage index available\n");
				return -1;
			}
		}

		for (n = parser->local.usage_minimum; n <= data; n++)
			if (FUNC2(parser, n, item->size)) {
				FUNC0("hid_add_usage failed\n");
				return -1;
			}
		return 0;

	default:

		FUNC0("unknown local item tag 0x%x\n", item->tag);
		return 0;
	}
	return 0;
}