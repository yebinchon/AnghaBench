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
typedef  int u16 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int* rbuf; int /*<<< orphan*/  lock; scalar_t__ dr; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct cxd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cxd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cxd*,int,int*) ; 

__attribute__((used)) static int FUNC5(struct dvb_ca_en50221 *ca, int slot, u8 *ebuf, int ecount)
{
	struct cxd *ci = ca->data;
	u8 msb, lsb;
	u16 len;

	FUNC1(&ci->lock);
	FUNC0(ci);
	FUNC2(&ci->lock);

	if (!ci->dr)
		return 0;

	FUNC1(&ci->lock);
	FUNC4(ci, 0x0f, &msb);
	FUNC4(ci, 0x10, &lsb);
	len = ((u16)msb << 8) | lsb;
	if (len > ecount || len < 2) {
		/* read it anyway or cxd may hang */
		FUNC3(ci, 0x12, ci->rbuf, len);
		FUNC2(&ci->lock);
		return -EIO;
	}
	FUNC3(ci, 0x12, ebuf, len);
	ci->dr = 0;
	FUNC2(&ci->lock);
	return len;
}