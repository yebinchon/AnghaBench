
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_demux_filter {int dummy; } ;
struct dvb_demux_feed {int dummy; } ;
struct dmx_demux {int get_pes_pids; int disconnect_frontend; int connect_frontend; int get_frontends; int remove_frontend; int add_frontend; int release_section_feed; int allocate_section_feed; int release_ts_feed; int allocate_ts_feed; int write; int close; int open; struct dvb_demux* priv; int * frontend; } ;
struct dvb_demux {int filternum; int feednum; int* pids; int lock; int mutex; scalar_t__ memcopy; scalar_t__ check_crc32; scalar_t__ tsbufp; scalar_t__ recording; scalar_t__ playing; int feed_list; int ** pesfilter; int frontend_list; int * cnt_storage; TYPE_1__* feed; TYPE_2__* filter; scalar_t__ users; struct dmx_demux dmx; } ;
struct TYPE_4__ {int index; void* state; } ;
struct TYPE_3__ {int index; void* state; } ;


 int DMX_PES_OTHER ;
 void* DMX_STATE_FREE ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ MAX_PID ;
 scalar_t__ array_size (int,int) ;
 scalar_t__ dvb_dmx_crc32 ;
 scalar_t__ dvb_dmx_memcopy ;
 int dvbdmx_add_frontend ;
 int dvbdmx_allocate_section_feed ;
 int dvbdmx_allocate_ts_feed ;
 int dvbdmx_close ;
 int dvbdmx_connect_frontend ;
 int dvbdmx_disconnect_frontend ;
 int dvbdmx_get_frontends ;
 int dvbdmx_get_pes_pids ;
 int dvbdmx_open ;
 int dvbdmx_release_section_feed ;
 int dvbdmx_release_ts_feed ;
 int dvbdmx_remove_frontend ;
 int dvbdmx_write ;
 int mutex_init (int *) ;
 int pr_warn (char*) ;
 int spin_lock_init (int *) ;
 int vfree (TYPE_2__*) ;
 void* vmalloc (scalar_t__) ;

int dvb_dmx_init(struct dvb_demux *dvbdemux)
{
 int i;
 struct dmx_demux *dmx = &dvbdemux->dmx;

 dvbdemux->cnt_storage = ((void*)0);
 dvbdemux->users = 0;
 dvbdemux->filter = vmalloc(array_size(sizeof(struct dvb_demux_filter),
           dvbdemux->filternum));

 if (!dvbdemux->filter)
  return -ENOMEM;

 dvbdemux->feed = vmalloc(array_size(sizeof(struct dvb_demux_feed),
         dvbdemux->feednum));
 if (!dvbdemux->feed) {
  vfree(dvbdemux->filter);
  dvbdemux->filter = ((void*)0);
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

 dvbdemux->cnt_storage = vmalloc(MAX_PID + 1);
 if (!dvbdemux->cnt_storage)
  pr_warn("Couldn't allocate memory for TS/TEI check. Disabling it\n");

 INIT_LIST_HEAD(&dvbdemux->frontend_list);

 for (i = 0; i < DMX_PES_OTHER; i++) {
  dvbdemux->pesfilter[i] = ((void*)0);
  dvbdemux->pids[i] = 0xffff;
 }

 INIT_LIST_HEAD(&dvbdemux->feed_list);

 dvbdemux->playing = 0;
 dvbdemux->recording = 0;
 dvbdemux->tsbufp = 0;

 if (!dvbdemux->check_crc32)
  dvbdemux->check_crc32 = dvb_dmx_crc32;

 if (!dvbdemux->memcopy)
  dvbdemux->memcopy = dvb_dmx_memcopy;

 dmx->frontend = ((void*)0);
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

 mutex_init(&dvbdemux->mutex);
 spin_lock_init(&dvbdemux->lock);

 return 0;
}
