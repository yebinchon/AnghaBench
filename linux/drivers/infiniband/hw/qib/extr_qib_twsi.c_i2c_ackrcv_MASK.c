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
typedef  int u8 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int) ; 
 scalar_t__ FUNC1 (struct qib_devdata*,int) ; 

__attribute__((used)) static int FUNC2(struct qib_devdata *dd)
{
	u8 ack_received;

	/* AT ENTRY SCL = LOW */
	/* change direction, ignore data */
	ack_received = FUNC1(dd, 1);
	FUNC0(dd, 1);
	ack_received = FUNC1(dd, 1) == 0;
	FUNC0(dd, 0);
	return ack_received;
}