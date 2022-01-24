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
struct dvb_demux {int tsbufp; int* tsbuf; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_demux*,int const*) ; 
 int FUNC1 (int const*,int,size_t,int const) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct dvb_demux *demux, const u8 *buf,
		size_t count, const int pktsize)
{
	int p = 0, i, j;
	const u8 *q;
	unsigned long flags;

	FUNC3(&demux->lock, flags);

	if (demux->tsbufp) { /* tsbuf[0] is now 0x47. */
		i = demux->tsbufp;
		j = pktsize - i;
		if (count < j) {
			FUNC2(&demux->tsbuf[i], buf, count);
			demux->tsbufp += count;
			goto bailout;
		}
		FUNC2(&demux->tsbuf[i], buf, j);
		if (demux->tsbuf[0] == 0x47) /* double check */
			FUNC0(demux, demux->tsbuf);
		demux->tsbufp = 0;
		p += j;
	}

	while (1) {
		p = FUNC1(buf, p, count, pktsize);
		if (p >= count)
			break;
		if (count - p < pktsize)
			break;

		q = &buf[p];

		if (pktsize == 204 && (*q == 0xB8)) {
			FUNC2(demux->tsbuf, q, 188);
			demux->tsbuf[0] = 0x47;
			q = demux->tsbuf;
		}
		FUNC0(demux, q);
		p += pktsize;
	}

	i = count - p;
	if (i) {
		FUNC2(demux->tsbuf, &buf[p], i);
		demux->tsbufp = i;
		if (pktsize == 204 && demux->tsbuf[0] == 0xB8)
			demux->tsbuf[0] = 0x47;
	}

bailout:
	FUNC4(&demux->lock, flags);
}