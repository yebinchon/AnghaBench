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
struct wtp_data {int dummy; } ;
struct hidpp_device {struct wtp_data* private_data; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct wtp_data* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct hidpp_device* FUNC1 (struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct hidpp_device *hidpp = FUNC1(hdev);
	struct wtp_data *wd;

	wd = FUNC0(&hdev->dev, sizeof(struct wtp_data),
			GFP_KERNEL);
	if (!wd)
		return -ENOMEM;

	hidpp->private_data = wd;

	return 0;
}