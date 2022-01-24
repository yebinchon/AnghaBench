#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int* usage; } ;
struct hid_parser {int collection_stack_ptr; int collection_stack_size; unsigned int* collection_stack; TYPE_2__* device; TYPE_1__ local; } ;
struct hid_collection {unsigned int type; unsigned int usage; int level; int parent_idx; } ;
struct TYPE_4__ {int maxcollection; int collection_size; int /*<<< orphan*/  maxapplication; struct hid_collection* collection; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HID_COLLECTION_APPLICATION ; 
 unsigned int HID_COLLECTION_STACK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_collection*) ; 
 struct hid_collection* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int* FUNC4 (unsigned int*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_collection*,struct hid_collection*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_collection*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct hid_parser *parser, unsigned type)
{
	struct hid_collection *collection;
	unsigned usage;
	int collection_index;

	usage = parser->local.usage[0];

	if (parser->collection_stack_ptr == parser->collection_stack_size) {
		unsigned int *collection_stack;
		unsigned int new_size = parser->collection_stack_size +
					HID_COLLECTION_STACK_SIZE;

		collection_stack = FUNC4(parser->collection_stack,
					    new_size * sizeof(unsigned int),
					    GFP_KERNEL);
		if (!collection_stack)
			return -ENOMEM;

		parser->collection_stack = collection_stack;
		parser->collection_stack_size = new_size;
	}

	if (parser->device->maxcollection == parser->device->collection_size) {
		collection = FUNC3(
				FUNC0(sizeof(struct hid_collection),
					    parser->device->collection_size,
					    2),
				GFP_KERNEL);
		if (collection == NULL) {
			FUNC1(parser->device, "failed to reallocate collection array\n");
			return -ENOMEM;
		}
		FUNC5(collection, parser->device->collection,
			sizeof(struct hid_collection) *
			parser->device->collection_size);
		FUNC6(collection + parser->device->collection_size, 0,
			sizeof(struct hid_collection) *
			parser->device->collection_size);
		FUNC2(parser->device->collection);
		parser->device->collection = collection;
		parser->device->collection_size *= 2;
	}

	parser->collection_stack[parser->collection_stack_ptr++] =
		parser->device->maxcollection;

	collection_index = parser->device->maxcollection++;
	collection = parser->device->collection + collection_index;
	collection->type = type;
	collection->usage = usage;
	collection->level = parser->collection_stack_ptr - 1;
	collection->parent_idx = (collection->level == 0) ? -1 :
		parser->collection_stack[collection->level - 1];

	if (type == HID_COLLECTION_APPLICATION)
		parser->device->maxapplication++;

	return 0;
}