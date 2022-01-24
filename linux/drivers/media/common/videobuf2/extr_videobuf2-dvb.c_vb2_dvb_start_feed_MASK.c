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
struct TYPE_4__ {int /*<<< orphan*/  threadio; } ;
struct vb2_dvb {int nfeeds; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; TYPE_2__ dvbq; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_3__ {int /*<<< orphan*/  frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct vb2_dvb* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  dvb_fnc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,struct vb2_dvb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct vb2_dvb *dvb = demux->priv;
	int rc = 0;

	if (!demux->dmx.frontend)
		return -EINVAL;

	FUNC0(&dvb->lock);
	dvb->nfeeds++;

	if (!dvb->dvbq.threadio) {
		rc = FUNC2(&dvb->dvbq, dvb_fnc, dvb, dvb->name);
		if (rc)
			dvb->nfeeds--;
	}
	if (!rc)
		rc = dvb->nfeeds;
	FUNC1(&dvb->lock);
	return rc;
}