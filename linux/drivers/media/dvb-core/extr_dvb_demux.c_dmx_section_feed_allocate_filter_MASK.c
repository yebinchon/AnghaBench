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
struct dmx_section_filter {int /*<<< orphan*/ * priv; struct dmx_section_feed* parent; } ;
struct dvb_demux_filter {struct dvb_demux_filter* next; int /*<<< orphan*/  state; int /*<<< orphan*/  type; struct dvb_demux_feed* feed; struct dmx_section_filter filter; } ;
struct dvb_demux_feed {struct dvb_demux_filter* filter; struct dvb_demux* demux; } ;
struct dvb_demux {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_section_feed {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMX_STATE_READY ; 
 int /*<<< orphan*/  DMX_TYPE_SEC ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 struct dvb_demux_filter* FUNC0 (struct dvb_demux*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dmx_section_feed *feed,
					    struct dmx_section_filter **filter)
{
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdemux = dvbdmxfeed->demux;
	struct dvb_demux_filter *dvbdmxfilter;

	if (FUNC1(&dvbdemux->mutex))
		return -ERESTARTSYS;

	dvbdmxfilter = FUNC0(dvbdemux);
	if (!dvbdmxfilter) {
		FUNC2(&dvbdemux->mutex);
		return -EBUSY;
	}

	FUNC3(&dvbdemux->lock);
	*filter = &dvbdmxfilter->filter;
	(*filter)->parent = feed;
	(*filter)->priv = NULL;
	dvbdmxfilter->feed = dvbdmxfeed;
	dvbdmxfilter->type = DMX_TYPE_SEC;
	dvbdmxfilter->state = DMX_STATE_READY;
	dvbdmxfilter->next = dvbdmxfeed->filter;
	dvbdmxfeed->filter = dvbdmxfilter;
	FUNC4(&dvbdemux->lock);

	FUNC2(&dvbdemux->mutex);
	return 0;
}