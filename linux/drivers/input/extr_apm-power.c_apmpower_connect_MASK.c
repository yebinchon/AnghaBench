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
struct input_handler {int dummy; } ;
struct input_handle {char* name; struct input_handler* handler; struct input_dev* dev; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct input_handle*) ; 
 int FUNC1 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_handle*) ; 
 struct input_handle* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct input_handler *handler,
					  struct input_dev *dev,
					  const struct input_device_id *id)
{
	struct input_handle *handle;
	int error;

	handle = FUNC4(sizeof(struct input_handle), GFP_KERNEL);
	if (!handle)
		return -ENOMEM;

	handle->dev = dev;
	handle->handler = handler;
	handle->name = "apm-power";

	error = FUNC1(handle);
	if (error) {
		FUNC5("Failed to register input power handler, error %d\n",
		       error);
		FUNC3(handle);
		return error;
	}

	error = FUNC0(handle);
	if (error) {
		FUNC5("Failed to open input power device, error %d\n", error);
		FUNC2(handle);
		FUNC3(handle);
		return error;
	}

	return 0;
}