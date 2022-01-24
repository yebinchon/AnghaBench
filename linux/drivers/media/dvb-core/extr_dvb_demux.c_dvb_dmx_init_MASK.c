#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dvb_demux_filter {int dummy; } ;
struct dvb_demux_feed {int dummy; } ;
struct dmx_demux {int /*<<< orphan*/  get_pes_pids; int /*<<< orphan*/  disconnect_frontend; int /*<<< orphan*/  connect_frontend; int /*<<< orphan*/  get_frontends; int /*<<< orphan*/  remove_frontend; int /*<<< orphan*/  add_frontend; int /*<<< orphan*/  release_section_feed; int /*<<< orphan*/  allocate_section_feed; int /*<<< orphan*/  release_ts_feed; int /*<<< orphan*/  allocate_ts_feed; int /*<<< orphan*/  write; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct dvb_demux* priv; int /*<<< orphan*/ * frontend; } ;
struct dvb_demux {int filternum; int feednum; int* pids; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; scalar_t__ memcopy; scalar_t__ check_crc32; scalar_t__ tsbufp; scalar_t__ recording; scalar_t__ playing; int /*<<< orphan*/  feed_list; int /*<<< orphan*/ ** pesfilter; int /*<<< orphan*/  frontend_list; int /*<<< orphan*/ * cnt_storage; TYPE_1__* feed; TYPE_2__* filter; scalar_t__ users; struct dmx_demux dmx; } ;
struct TYPE_4__ {int index; void* state; } ;
struct TYPE_3__ {int index; void* state; } ;

/* Variables and functions */
 int DMX_PES_OTHER ; 
 void* DMX_STATE_FREE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_PID ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ dvb_dmx_crc32 ; 
 scalar_t__ dvb_dmx_memcopy ; 
 int /*<<< orphan*/  dvbdmx_add_frontend ; 
 int /*<<< orphan*/  dvbdmx_allocate_section_feed ; 
 int /*<<< orphan*/  dvbdmx_allocate_ts_feed ; 
 int /*<<< orphan*/  dvbdmx_close ; 
 int /*<<< orphan*/  dvbdmx_connect_frontend ; 
 int /*<<< orphan*/  dvbdmx_disconnect_frontend ; 
 int /*<<< orphan*/  dvbdmx_get_frontends ; 
 int /*<<< orphan*/  dvbdmx_get_pes_pids ; 
 int /*<<< orphan*/  dvbdmx_open ; 
 int /*<<< orphan*/  dvbdmx_release_section_feed ; 
 int /*<<< orphan*/  dvbdmx_release_ts_feed ; 
 int /*<<< orphan*/  dvbdmx_remove_frontend ; 
 int /*<<< orphan*/  dvbdmx_write ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (scalar_t__) ; 

int FUNC7(struct dvb_demux *dvbdemux)
{
	int i;
	struct dmx_demux *dmx = &dvbdemux->dmx;

	dvbdemux->cnt_storage = NULL;
	dvbdemux->users = 0;
	dvbdemux->filter = FUNC6(FUNC1(sizeof(struct dvb_demux_filter),
					      dvbdemux->filternum));

	if (!dvbdemux->filter)
		return -ENOMEM;

	dvbdemux->feed = FUNC6(FUNC1(sizeof(struct dvb_demux_feed),
					    dvbdemux->feednum));
	if (!dvbdemux->feed) {
		FUNC5(dvbdemux->filter);
		dvbdemux->filter = NULL;
		return -ENOMEM;
	}
	for (i = 0; i < dvbdemux->filternum; i++) {
		dvbdemux->filter[i].state = DMX_STATE_FREE;
		dvbdemux->filter[i].index = i;
	}
	for (i = 0; i < dvbdemux->feednum; i++) {
		dvbdemux->feed[i].state = DMX_STATE_FREE;
		dvbdemux->feed[i].index = i;
	}

	dvbdemux->cnt_storage = FUNC6(MAX_PID + 1);
	if (!dvbdemux->cnt_storage)
		FUNC3("Couldn't allocate memory for TS/TEI check. Disabling it\n");

	FUNC0(&dvbdemux->frontend_list);

	for (i = 0; i < DMX_PES_OTHER; i++) {
		dvbdemux->pesfilter[i] = NULL;
		dvbdemux->pids[i] = 0xffff;
	}

	FUNC0(&dvbdemux->feed_list);

	dvbdemux->playing = 0;
	dvbdemux->recording = 0;
	dvbdemux->tsbufp = 0;

	if (!dvbdemux->check_crc32)
		dvbdemux->check_crc32 = dvb_dmx_crc32;

	if (!dvbdemux->memcopy)
		dvbdemux->memcopy = dvb_dmx_memcopy;

	dmx->frontend = NULL;
	dmx->priv = dvbdemux;
	dmx->open = dvbdmx_open;
	dmx->close = dvbdmx_close;
	dmx->write = dvbdmx_write;
	dmx->allocate_ts_feed = dvbdmx_allocate_ts_feed;
	dmx->release_ts_feed = dvbdmx_release_ts_feed;
	dmx->allocate_section_feed = dvbdmx_allocate_section_feed;
	dmx->release_section_feed = dvbdmx_release_section_feed;

	dmx->add_frontend = dvbdmx_add_frontend;
	dmx->remove_frontend = dvbdmx_remove_frontend;
	dmx->get_frontends = dvbdmx_get_frontends;
	dmx->connect_frontend = dvbdmx_connect_frontend;
	dmx->disconnect_frontend = dvbdmx_disconnect_frontend;
	dmx->get_pes_pids = dvbdmx_get_pes_pids;

	FUNC2(&dvbdemux->mutex);
	FUNC4(&dvbdemux->lock);

	return 0;
}