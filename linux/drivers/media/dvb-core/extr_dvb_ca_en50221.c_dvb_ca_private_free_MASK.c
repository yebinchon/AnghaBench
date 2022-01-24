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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct dvb_ca_private {unsigned int slot_count; struct dvb_ca_private* slot_info; TYPE_1__ rx_buffer; int /*<<< orphan*/  dvbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_ca_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dvb_ca_private *ca)
{
	unsigned int i;

	FUNC0(ca->dvbdev);
	for (i = 0; i < ca->slot_count; i++)
		FUNC2(ca->slot_info[i].rx_buffer.data);

	FUNC1(ca->slot_info);
	FUNC1(ca);
}