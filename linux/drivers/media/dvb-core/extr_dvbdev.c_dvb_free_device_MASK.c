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
struct dvb_device {struct dvb_device* fops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_device*) ; 

void FUNC1(struct dvb_device *dvbdev)
{
	if (!dvbdev)
		return;

	FUNC0 (dvbdev->fops);
	FUNC0 (dvbdev);
}