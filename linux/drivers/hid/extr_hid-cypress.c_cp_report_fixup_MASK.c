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
 unsigned long CP_RDESC_SWAPPED_MIN_MAX ; 
 scalar_t__ FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static __u8 *FUNC2(struct hid_device *hdev, __u8 *rdesc,
		unsigned int *rsize)
{
	unsigned long quirks = (unsigned long)FUNC0(hdev);
	unsigned int i;

	if (!(quirks & CP_RDESC_SWAPPED_MIN_MAX))
		return rdesc;

	if (*rsize < 4)
		return rdesc;

	for (i = 0; i < *rsize - 4; i++)
		if (rdesc[i] == 0x29 && rdesc[i + 2] == 0x19) {
			rdesc[i] = 0x19;
			rdesc[i + 2] = 0x29;
			FUNC1(rdesc[i + 3], rdesc[i + 1]);
		}
	return rdesc;
}