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
struct dvb_demux_feed {int /*<<< orphan*/  state; struct dvb_demux* demux; } ;
struct dvb_demux {int (* stop_feed ) (struct dvb_demux_feed*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_section_feed {scalar_t__ is_filtering; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_STATE_READY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC5(struct dmx_section_feed *feed)
{
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
	int ret;

	FUNC0(&dvbdmx->mutex);

	if (!dvbdmx->stop_feed) {
		FUNC1(&dvbdmx->mutex);
		return -ENODEV;
	}

	ret = dvbdmx->stop_feed(dvbdmxfeed);

	FUNC2(&dvbdmx->lock);
	dvbdmxfeed->state = DMX_STATE_READY;
	feed->is_filtering = 0;
	FUNC3(&dvbdmx->lock);

	FUNC1(&dvbdmx->mutex);
	return ret;
}