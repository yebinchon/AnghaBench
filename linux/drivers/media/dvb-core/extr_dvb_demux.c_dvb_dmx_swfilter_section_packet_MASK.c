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
struct dvb_demux_feed {int cc; int pusi_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED ; 
 int /*<<< orphan*/  DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_demux_feed*,int const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_demux_feed*) ; 
 int FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_demux_feed*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_demux_feed *feed,
					   const u8 *buf)
{
	u8 p, count;
	int ccok, dc_i = 0;
	u8 cc;

	count = FUNC3(buf);

	if (count == 0)		/* count == 0 if no payload or out of range */
		return -1;

	p = 188 - count;	/* payload start */

	cc = buf[3] & 0x0f;
	ccok = ((feed->cc + 1) & 0x0f) == cc;
	feed->cc = cc;

	if (buf[3] & 0x20) {
		/* adaption field present, check for discontinuity_indicator */
		if ((buf[4] > 0) && (buf[5] & 0x80))
			dc_i = 1;
	}

	if (!ccok || dc_i) {
		if (dc_i) {
			FUNC4(feed,
				      DMX_BUFFER_FLAG_DISCONTINUITY_INDICATOR);
			FUNC0("%d frame with disconnect indicator\n",
				cc);
		} else {
			FUNC4(feed,
				      DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
			FUNC0("discontinuity: %d instead of %d. %d bytes lost\n",
				cc, (feed->cc + 1) & 0x0f, count + 4);
		}
		/*
		 * those bytes under some circumstances will again be reported
		 * in the following dvb_dmx_swfilter_section_new
		 */

		/*
		 * Discontinuity detected. Reset pusi_seen to
		 * stop feeding of suspicious data until next PUSI=1 arrives
		 *
		 * FIXME: does it make sense if the MPEG-TS is the one
		 *	reporting discontinuity?
		 */

		feed->pusi_seen = false;
		FUNC2(feed);
	}

	if (buf[1] & 0x40) {
		/* PUSI=1 (is set), section boundary is here */
		if (count > 1 && buf[p] < count) {
			const u8 *before = &buf[p + 1];
			u8 before_len = buf[p];
			const u8 *after = &before[before_len];
			u8 after_len = count - 1 - before_len;

			FUNC1(feed, before,
							   before_len);
			/* before start of new section, set pusi_seen */
			feed->pusi_seen = true;
			FUNC2(feed);
			FUNC1(feed, after,
							   after_len);
		} else if (count > 0) {
			FUNC4(feed,
				      DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
			FUNC0("PUSI=1 but %d bytes lost\n", count);
		}
	} else {
		/* PUSI=0 (is not set), no section boundary */
		FUNC1(feed, &buf[p], count);
	}

	return 0;
}