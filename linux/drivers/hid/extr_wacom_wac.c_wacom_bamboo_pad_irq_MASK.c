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
struct wacom_wac {unsigned char* data; } ;

/* Variables and functions */
 size_t WACOM_PKGLEN_BPAD_TOUCH ; 
 size_t WACOM_PKGLEN_BPAD_TOUCH_USB ; 
 unsigned char WACOM_REPORT_BPAD_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct wacom_wac*,unsigned char*) ; 
 int FUNC1 (struct wacom_wac*,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct wacom_wac *wacom, size_t len)
{
	unsigned char *data = wacom->data;

	if (!((len == WACOM_PKGLEN_BPAD_TOUCH) ||
	      (len == WACOM_PKGLEN_BPAD_TOUCH_USB)) ||
	    (data[0] != WACOM_REPORT_BPAD_TOUCH))
		return 0;

	if (data[1] & 0x01)
		FUNC0(wacom, &data[1]);

	if (data[1] & 0x02)
		return FUNC1(wacom, &data[9]);

	return 0;
}