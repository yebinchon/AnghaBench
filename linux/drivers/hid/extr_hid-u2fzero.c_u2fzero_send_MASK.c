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
struct u2fzero_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  buf_out; int /*<<< orphan*/  hdev; } ;
struct u2f_hid_report {int dummy; } ;
struct u2f_hid_msg {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct u2f_hid_report*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct u2fzero_device *dev, struct u2f_hid_report *req)
{
	int ret;

	FUNC2(&dev->lock);

	FUNC1(dev->buf_out, req, sizeof(struct u2f_hid_report));

	ret = FUNC0(dev->hdev, dev->buf_out,
				   sizeof(struct u2f_hid_msg));

	FUNC3(&dev->lock);

	if (ret < 0)
		return ret;

	return ret == sizeof(struct u2f_hid_msg) ? 0 : -EMSGSIZE;
}