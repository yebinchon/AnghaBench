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
struct uinput_request {int retval; int /*<<< orphan*/  id; int /*<<< orphan*/  done; } ;
struct uinput_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct uinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct uinput_device*,struct uinput_request*) ; 
 int FUNC2 (struct uinput_device*,struct uinput_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct uinput_device *udev,
				 struct uinput_request *request)
{
	int retval;

	retval = FUNC1(udev, request);
	if (retval)
		return retval;

	retval = FUNC2(udev, request);
	if (retval)
		goto out;

	if (!FUNC3(&request->done, 30 * HZ)) {
		retval = -ETIMEDOUT;
		goto out;
	}

	retval = request->retval;

 out:
	FUNC0(udev, request->id);
	return retval;
}