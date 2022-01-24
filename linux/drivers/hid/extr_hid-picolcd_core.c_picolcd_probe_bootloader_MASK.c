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
struct picolcd_data {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPORT_BL_READ_MEMORY ; 
 int /*<<< orphan*/  REPORT_BL_WRITE_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct picolcd_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct picolcd_data *data)
{
	FUNC0(data, NULL, NULL,
			FUNC1(REPORT_BL_READ_MEMORY, hdev),
			FUNC1(REPORT_BL_WRITE_MEMORY, hdev), NULL);
	return 0;
}