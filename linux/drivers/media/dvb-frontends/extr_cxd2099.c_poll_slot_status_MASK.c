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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int slot_stat; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cxd*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *ca, int slot, int open)
{
	struct cxd *ci = ca->data;
	u8 slotstat;

	FUNC1(&ci->lock);
	FUNC0(ci);
	FUNC3(ci, 0x01, &slotstat);
	FUNC2(&ci->lock);

	return ci->slot_stat;
}