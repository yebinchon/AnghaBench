#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {void* queuedata; } ;
struct nvm_tgt_type {int flags; int /*<<< orphan*/  (* exit ) (void*,int) ;int /*<<< orphan*/  owner; scalar_t__ (* sysfs_init ) (struct gendisk*) ;int /*<<< orphan*/  (* capacity ) (void*) ;void* (* init ) (struct nvm_tgt_dev*,struct gendisk*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  make_rq; } ;
struct nvm_tgt_dev {int dummy; } ;
struct nvm_target {int /*<<< orphan*/  list; struct nvm_tgt_dev* dev; struct gendisk* disk; struct nvm_tgt_type* type; } ;
struct nvm_ioctl_create_extended {int /*<<< orphan*/  lun_end; int /*<<< orphan*/  lun_begin; int /*<<< orphan*/  op; } ;
struct TYPE_8__ {int /*<<< orphan*/  lun_end; int /*<<< orphan*/  lun_begin; } ;
struct TYPE_5__ {int type; struct nvm_ioctl_create_extended e; TYPE_4__ s; } ;
struct nvm_ioctl_create {int /*<<< orphan*/  flags; int /*<<< orphan*/  tgtname; int /*<<< orphan*/  tgttype; TYPE_1__ conf; } ;
struct TYPE_7__ {int dom; int csecs; scalar_t__ mdts; } ;
struct nvm_dev {int /*<<< orphan*/  mlock; int /*<<< orphan*/  targets; TYPE_3__ geo; TYPE_2__* q; } ;
struct gendisk {struct request_queue* queue; void* private_data; int /*<<< orphan*/ * fops; scalar_t__ first_minor; scalar_t__ major; int /*<<< orphan*/  flags; int /*<<< orphan*/  disk_name; } ;
struct TYPE_6__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GENHD_FL_EXT_DEVT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
#define  NVM_CONFIG_TYPE_EXTENDED 129 
#define  NVM_CONFIG_TYPE_SIMPLE 128 
 int NVM_MAX_VLBA ; 
 int NVM_RSP_L2P ; 
 int /*<<< orphan*/  NVM_TARGET_DEFAULT_OP ; 
 int NVM_TGT_F_HOST_L2P ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nvm_dev*,struct nvm_ioctl_create_extended*) ; 
 int FUNC4 (struct nvm_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct gendisk*) ; 
 struct gendisk* FUNC6 (int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct request_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct nvm_target*) ; 
 struct nvm_target* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct nvm_tgt_dev* FUNC17 (struct nvm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nvm_tgt_type* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvm_fops ; 
 int /*<<< orphan*/  FUNC19 (struct nvm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct nvm_tgt_dev*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct nvm_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC25 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC27 (struct nvm_tgt_dev*,struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 
 scalar_t__ FUNC29 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC30 (void*,int) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC31(struct nvm_dev *dev, struct nvm_ioctl_create *create)
{
	struct nvm_ioctl_create_extended e;
	struct request_queue *tqueue;
	struct gendisk *tdisk;
	struct nvm_tgt_type *tt;
	struct nvm_target *t;
	struct nvm_tgt_dev *tgt_dev;
	void *targetdata;
	unsigned int mdts;
	int ret;

	switch (create->conf.type) {
	case NVM_CONFIG_TYPE_SIMPLE:
		ret = FUNC4(dev, &create->conf.s);
		if (ret)
			return ret;

		e.lun_begin = create->conf.s.lun_begin;
		e.lun_end = create->conf.s.lun_end;
		e.op = NVM_TARGET_DEFAULT_OP;
		break;
	case NVM_CONFIG_TYPE_EXTENDED:
		ret = FUNC3(dev, &create->conf.e);
		if (ret)
			return ret;

		e = create->conf.e;
		break;
	default:
		FUNC23("config type not valid\n");
		return -EINVAL;
	}

	tt = FUNC18(create->tgttype);
	if (!tt) {
		FUNC23("target type %s not found\n", create->tgttype);
		return -EINVAL;
	}

	if ((tt->flags & NVM_TGT_F_HOST_L2P) != (dev->geo.dom & NVM_RSP_L2P)) {
		FUNC23("device is incompatible with target L2P type.\n");
		return -EINVAL;
	}

	if (FUNC22(create->tgtname)) {
		FUNC23("target name already exists (%s)\n",
							create->tgtname);
		return -EINVAL;
	}

	ret = FUNC21(dev, e.lun_begin, e.lun_end);
	if (ret)
		return ret;

	t = FUNC12(sizeof(struct nvm_target), GFP_KERNEL);
	if (!t) {
		ret = -ENOMEM;
		goto err_reserve;
	}

	tgt_dev = FUNC17(dev, e.lun_begin, e.lun_end, e.op);
	if (!tgt_dev) {
		FUNC23("could not create target device\n");
		ret = -ENOMEM;
		goto err_t;
	}

	tdisk = FUNC6(0);
	if (!tdisk) {
		ret = -ENOMEM;
		goto err_dev;
	}

	tqueue = FUNC7(GFP_KERNEL, dev->q->node);
	if (!tqueue) {
		ret = -ENOMEM;
		goto err_disk;
	}
	FUNC9(tqueue, tt->make_rq);

	FUNC26(tdisk->disk_name, create->tgtname, sizeof(tdisk->disk_name));
	tdisk->flags = GENHD_FL_EXT_DEVT;
	tdisk->major = 0;
	tdisk->first_minor = 0;
	tdisk->fops = &nvm_fops;
	tdisk->queue = tqueue;

	targetdata = tt->init(tgt_dev, tdisk, create->flags);
	if (FUNC0(targetdata)) {
		ret = FUNC1(targetdata);
		goto err_init;
	}

	tdisk->private_data = targetdata;
	tqueue->queuedata = targetdata;

	mdts = (dev->geo.csecs >> 9) * NVM_MAX_VLBA;
	if (dev->geo.mdts) {
		mdts = FUNC14(u32, dev->geo.mdts,
				(dev->geo.csecs >> 9) * NVM_MAX_VLBA);
	}
	FUNC10(tqueue, mdts);

	FUNC25(tdisk, tt->capacity(targetdata));
	FUNC5(tdisk);

	if (tt->sysfs_init && tt->sysfs_init(tdisk)) {
		ret = -ENOMEM;
		goto err_sysfs;
	}

	t->type = tt;
	t->disk = tdisk;
	t->dev = tgt_dev;

	FUNC15(&dev->mlock);
	FUNC13(&t->list, &dev->targets);
	FUNC16(&dev->mlock);

	FUNC2(tt->owner);

	return 0;
err_sysfs:
	if (tt->exit)
		tt->exit(targetdata, true);
err_init:
	FUNC8(tqueue);
	tdisk->queue = NULL;
err_disk:
	FUNC24(tdisk);
err_dev:
	FUNC20(tgt_dev, 0);
err_t:
	FUNC11(t);
err_reserve:
	FUNC19(dev, e.lun_begin, e.lun_end);
	return ret;
}