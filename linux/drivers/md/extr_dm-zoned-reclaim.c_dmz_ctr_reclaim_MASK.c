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
struct dmz_reclaim {int /*<<< orphan*/ * kc; int /*<<< orphan*/  work; int /*<<< orphan*/  wq; int /*<<< orphan*/  kc_throttle; int /*<<< orphan*/  atime; struct dmz_metadata* metadata; struct dmz_dev* dev; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_dev {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmz_reclaim_work ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_reclaim*) ; 
 struct dmz_reclaim* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct dmz_dev *dev, struct dmz_metadata *zmd,
		    struct dmz_reclaim **reclaim)
{
	struct dmz_reclaim *zrc;
	int ret;

	zrc = FUNC7(sizeof(struct dmz_reclaim), GFP_KERNEL);
	if (!zrc)
		return -ENOMEM;

	zrc->dev = dev;
	zrc->metadata = zmd;
	zrc->atime = jiffies;

	/* Reclaim kcopyd client */
	zrc->kc = FUNC4(&zrc->kc_throttle);
	if (FUNC1(zrc->kc)) {
		ret = FUNC2(zrc->kc);
		zrc->kc = NULL;
		goto err;
	}

	/* Reclaim work */
	FUNC0(&zrc->work, dmz_reclaim_work);
	zrc->wq = FUNC3("dmz_rwq_%s", WQ_MEM_RECLAIM,
					  dev->name);
	if (!zrc->wq) {
		ret = -ENOMEM;
		goto err;
	}

	*reclaim = zrc;
	FUNC8(zrc->wq, &zrc->work, 0);

	return 0;
err:
	if (zrc->kc)
		FUNC5(zrc->kc);
	FUNC6(zrc);

	return ret;
}