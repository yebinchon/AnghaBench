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
struct hid_device {int /*<<< orphan*/  dev; } ;
struct cougar_shared {int /*<<< orphan*/  list; struct hid_device* dev; int /*<<< orphan*/  kref; } ;
struct cougar {struct cougar_shared* shared; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cougar_shared* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cougar*) ; 
 int /*<<< orphan*/  cougar_udev_list ; 
 int /*<<< orphan*/  cougar_udev_list_lock ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct cougar*),struct cougar*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cougar_shared* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev,
				   struct cougar *cougar)
{
	struct cougar_shared *shared;
	int error = 0;

	FUNC6(&cougar_udev_list_lock);

	shared = FUNC0(hdev);
	if (!shared) {
		shared = FUNC4(sizeof(*shared), GFP_KERNEL);
		if (!shared) {
			error = -ENOMEM;
			goto out;
		}

		FUNC3(&shared->kref);
		shared->dev = hdev;
		FUNC5(&shared->list, &cougar_udev_list);
	}

	cougar->shared = shared;

	error = FUNC2(&hdev->dev, cougar_remove_shared_data, cougar);
	if (error) {
		FUNC7(&cougar_udev_list_lock);
		FUNC1(cougar);
		return error;
	}

out:
	FUNC7(&cougar_udev_list_lock);
	return error;
}