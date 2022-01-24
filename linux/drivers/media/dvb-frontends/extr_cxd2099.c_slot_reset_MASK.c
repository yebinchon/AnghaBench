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
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int mode; int /*<<< orphan*/  lock; scalar_t__ ready; int /*<<< orphan*/  rbuf; scalar_t__ cammode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_ca_en50221*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cxd*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cxd*,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct dvb_ca_en50221 *ca, int slot)
{
	struct cxd *ci = ca->data;

	if (ci->cammode)
		FUNC3(ca, slot, ci->rbuf, 0);

	FUNC1(&ci->lock);
	FUNC0(ci, 0);
	FUNC5(ci, 0x00, 0x21);
	FUNC5(ci, 0x06, 0x1F);
	FUNC5(ci, 0x00, 0x31);
	FUNC6(ci, 0x20, 0x80, 0x80);
	FUNC5(ci, 0x03, 0x02);
	ci->ready = 0;
	ci->mode = -1;
	{
		int i;

		for (i = 0; i < 100; i++) {
			FUNC4(10000, 11000);
			if (ci->ready)
				break;
		}
	}
	FUNC2(&ci->lock);
	return 0;
}