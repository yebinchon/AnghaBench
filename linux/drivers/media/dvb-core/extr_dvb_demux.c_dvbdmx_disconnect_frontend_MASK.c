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
struct dvb_demux {int /*<<< orphan*/  mutex; } ;
struct dmx_demux {int /*<<< orphan*/ * frontend; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct dmx_demux *demux)
{
	struct dvb_demux *dvbdemux = (struct dvb_demux *)demux;

	FUNC0(&dvbdemux->mutex);

	demux->frontend = NULL;
	FUNC1(&dvbdemux->mutex);
	return 0;
}