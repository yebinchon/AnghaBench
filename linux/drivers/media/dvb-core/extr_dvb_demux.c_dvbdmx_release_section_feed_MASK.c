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
struct dvb_demux_feed {scalar_t__ state; int pid; } ;
struct dvb_demux {int /*<<< orphan*/  mutex; } ;
struct dmx_section_feed {int dummy; } ;
struct dmx_demux {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMX_STATE_FREE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_demux_feed*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dmx_demux *demux,
				       struct dmx_section_feed *feed)
{
	struct dvb_demux_feed *dvbdmxfeed = (struct dvb_demux_feed *)feed;
	struct dvb_demux *dvbdmx = (struct dvb_demux *)demux;

	FUNC1(&dvbdmx->mutex);

	if (dvbdmxfeed->state == DMX_STATE_FREE) {
		FUNC2(&dvbdmx->mutex);
		return -EINVAL;
	}
	dvbdmxfeed->state = DMX_STATE_FREE;

	FUNC0(dvbdmxfeed);

	dvbdmxfeed->pid = 0xffff;

	FUNC2(&dvbdmx->mutex);
	return 0;
}