#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_keyspan {int* in_buffer; TYPE_1__* udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC2(struct usb_keyspan* dev) /*unsigned char* data)*/
{
	char codes[4 * RECV_SIZE];
	int i;

	for (i = 0; i < RECV_SIZE; i++)
		FUNC1(codes + i * 3, 4, "%02x ", dev->in_buffer[i]);

	FUNC0(&dev->udev->dev, "%s\n", codes);
}