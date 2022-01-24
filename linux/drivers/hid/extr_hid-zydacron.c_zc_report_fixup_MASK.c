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
struct hid_device {int dummy; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 

__attribute__((used)) static __u8 *FUNC1(struct hid_device *hdev, __u8 *rdesc,
	unsigned int *rsize)
{
	if (*rsize >= 253 &&
		rdesc[0x96] == 0xbc && rdesc[0x97] == 0xff &&
		rdesc[0xca] == 0xbc && rdesc[0xcb] == 0xff &&
		rdesc[0xe1] == 0xbc && rdesc[0xe2] == 0xff) {
			FUNC0(hdev,
				"fixing up zydacron remote control report descriptor\n");
			rdesc[0x96] = rdesc[0xca] = rdesc[0xe1] = 0x0c;
			rdesc[0x97] = rdesc[0xcb] = rdesc[0xe2] = 0x00;
		}
	return rdesc;
}