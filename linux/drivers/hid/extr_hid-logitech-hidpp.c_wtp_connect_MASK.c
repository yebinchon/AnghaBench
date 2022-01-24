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
struct wtp_data {int /*<<< orphan*/  mt_feature_index; int /*<<< orphan*/  x_size; } ;
struct hidpp_device {struct wtp_data* private_data; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,int) ; 
 struct hidpp_device* FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hidpp_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct hidpp_device*) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, bool connected)
{
	struct hidpp_device *hidpp = FUNC1(hdev);
	struct wtp_data *wd = hidpp->private_data;
	int ret;

	if (!wd->x_size) {
		ret = FUNC3(hidpp);
		if (ret) {
			FUNC0(hdev, "Can not get wtp config: %d\n", ret);
			return ret;
		}
	}

	return FUNC2(hidpp, wd->mt_feature_index,
			true, true);
}