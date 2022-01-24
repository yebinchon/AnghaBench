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
struct input_handle {int dummy; } ;
struct mousedev {scalar_t__ open; struct input_handle handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct mousedev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mousedev*) ; 

__attribute__((used)) static void FUNC3(struct mousedev *mousedev)
{
	struct input_handle *handle = &mousedev->handle;

	FUNC2(mousedev);
	FUNC1(mousedev);

	/* mousedev is marked dead so no one else accesses mousedev->open */
	if (mousedev->open)
		FUNC0(handle);
}