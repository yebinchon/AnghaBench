#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct dvb_net_priv {scalar_t__ feedtype; int multi_num; int /*<<< orphan*/  mutex; TYPE_2__* tsfeed; TYPE_1__* demux; TYPE_5__* secfeed; int /*<<< orphan*/ ** multi_secfilter; int /*<<< orphan*/ * secfilter; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* release_filter ) (TYPE_5__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* stop_filtering ) (TYPE_5__*) ;scalar_t__ is_filtering; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* stop_filtering ) (TYPE_2__*) ;scalar_t__ is_filtering; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* release_ts_feed ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  (* release_section_feed ) (TYPE_1__*,TYPE_5__*) ;} ;

/* Variables and functions */
 scalar_t__ DVB_NET_FEEDTYPE_MPE ; 
 scalar_t__ DVB_NET_FEEDTYPE_ULE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,...) ; 
 struct dvb_net_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct dvb_net_priv *priv = FUNC3(dev);
	int i, ret = 0;

	FUNC0(&priv->mutex);
	if (priv->feedtype == DVB_NET_FEEDTYPE_MPE) {
		if (priv->secfeed) {
			if (priv->secfeed->is_filtering) {
				FUNC2(dev, "stop secfeed\n");
				priv->secfeed->stop_filtering(priv->secfeed);
			}

			if (priv->secfilter) {
				FUNC2(dev, "release secfilter\n");
				priv->secfeed->release_filter(priv->secfeed,
							      priv->secfilter);
				priv->secfilter=NULL;
			}

			for (i=0; i<priv->multi_num; i++) {
				if (priv->multi_secfilter[i]) {
					FUNC2(dev, "release multi_filter[%d]\n",
						   i);
					priv->secfeed->release_filter(priv->secfeed,
								      priv->multi_secfilter[i]);
					priv->multi_secfilter[i] = NULL;
				}
			}

			priv->demux->release_section_feed(priv->demux, priv->secfeed);
			priv->secfeed = NULL;
		} else
			FUNC4("%s: no feed to stop\n", dev->name);
	} else if (priv->feedtype == DVB_NET_FEEDTYPE_ULE) {
		if (priv->tsfeed) {
			if (priv->tsfeed->is_filtering) {
				FUNC2(dev, "stop tsfeed\n");
				priv->tsfeed->stop_filtering(priv->tsfeed);
			}
			priv->demux->release_ts_feed(priv->demux, priv->tsfeed);
			priv->tsfeed = NULL;
		}
		else
			FUNC4("%s: no ts feed to stop\n", dev->name);
	} else
		ret = -EINVAL;
	FUNC1(&priv->mutex);
	return ret;
}