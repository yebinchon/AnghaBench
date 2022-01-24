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
struct mousevsc_dev {int /*<<< orphan*/  report_desc_size; int /*<<< orphan*/  report_desc; } ;
struct hv_device {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct hv_device* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mousevsc_dev* FUNC2 (struct hv_device*) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hid)
{
	struct hv_device *dev = FUNC0(hid);
	struct mousevsc_dev *input_dev = FUNC2(dev);

	return FUNC1(hid, input_dev->report_desc,
				input_dev->report_desc_size);
}