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

/* Variables and functions */
 int HZ ; 
 scalar_t__ jiffies ; 
 int parkbd_buffer ; 
 int parkbd_counter ; 
 scalar_t__ parkbd_last ; 
 int parkbd_mode ; 
 int /*<<< orphan*/  parkbd_port ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ parkbd_writing ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void *dev_id)
{

	if (parkbd_writing) {

		if (parkbd_counter && ((parkbd_counter == 11) || FUNC3(jiffies, parkbd_last + HZ/100))) {
			parkbd_counter = 0;
			parkbd_buffer = 0;
			parkbd_writing = 0;
			FUNC1(3);
			return;
		}

		FUNC1(((parkbd_buffer >> parkbd_counter++) & 1) | 2);

		if (parkbd_counter == 11) {
			parkbd_counter = 0;
			parkbd_buffer = 0;
			parkbd_writing = 0;
			FUNC1(3);
		}

	} else {

		if ((parkbd_counter == parkbd_mode + 10) || FUNC3(jiffies, parkbd_last + HZ/100)) {
			parkbd_counter = 0;
			parkbd_buffer = 0;
		}

		parkbd_buffer |= (FUNC0() >> 1) << parkbd_counter++;

		if (parkbd_counter == parkbd_mode + 10)
			FUNC2(parkbd_port, (parkbd_buffer >> (2 - parkbd_mode)) & 0xff, 0);
	}

	parkbd_last = jiffies;
}