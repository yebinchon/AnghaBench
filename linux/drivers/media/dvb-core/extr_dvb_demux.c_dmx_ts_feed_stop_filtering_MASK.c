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
struct dvb_demux_feed {scalar_t__ state; struct dvb_demux* demux; } ;
struct dvb_demux {int (* stop_feed ) (struct dvb_demux_feed*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;
struct dmx_ts_feed {scalar_t__ is_filtering; } ;

/* Variables and functions */
 scalar_t__ DMX_STATE_ALLOCATED ; 
 scalar_t__ DMX_STATE_GO ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC5(struct dmx_ts_feed *ts_feed)
{
	struct dvb_demux_feed *feed = (struct dvb_demux_feed *)ts_feed;
	struct dvb_demux *demux = feed->demux;
	int ret;

	FUNC0(&demux->mutex);

	if (feed->state < DMX_STATE_GO) {
		FUNC1(&demux->mutex);
		return -EINVAL;
	}

	if (!demux->stop_feed) {
		FUNC1(&demux->mutex);
		return -ENODEV;
	}

	ret = demux->stop_feed(feed);

	FUNC2(&demux->lock);
	ts_feed->is_filtering = 0;
	feed->state = DMX_STATE_ALLOCATED;
	FUNC3(&demux->lock);
	FUNC1(&demux->mutex);

	return ret;
}