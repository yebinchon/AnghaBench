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
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ishtp_device*,struct ishtp_msg_hdr*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(struct ishtp_device *dev, struct ishtp_msg_hdr *hdr,
			void *buf)
{
	return FUNC0(dev, hdr, buf, NULL, NULL);
}