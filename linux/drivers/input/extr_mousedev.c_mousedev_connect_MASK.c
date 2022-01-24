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
struct mousedev {int dummy; } ;
struct input_handler {int dummy; } ;
struct input_device_id {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mousedev*) ; 
 int FUNC1 (struct mousedev*) ; 
 int FUNC2 (struct mousedev*) ; 
 struct mousedev* FUNC3 (struct input_dev*,struct input_handler*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mousedev*) ; 

__attribute__((used)) static int FUNC5(struct input_handler *handler,
			    struct input_dev *dev,
			    const struct input_device_id *id)
{
	struct mousedev *mousedev;
	int error;

	mousedev = FUNC3(dev, handler, false);
	if (FUNC0(mousedev))
		return FUNC1(mousedev);

	error = FUNC2(mousedev);
	if (error) {
		FUNC4(mousedev);
		return error;
	}

	return 0;
}