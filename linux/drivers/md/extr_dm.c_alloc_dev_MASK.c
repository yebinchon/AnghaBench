#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  completion; } ;
struct mapped_device {int numa_node_id; int init_tio_pdu; int /*<<< orphan*/  stats; int /*<<< orphan*/  bdev; TYPE_4__* disk; int /*<<< orphan*/  wq; int /*<<< orphan*/  name; int /*<<< orphan*/  dax_dev; TYPE_3__* queue; TYPE_2__ kobj_holder; int /*<<< orphan*/  eventq; int /*<<< orphan*/  work; int /*<<< orphan*/  wait; int /*<<< orphan*/  uevent_lock; int /*<<< orphan*/  table_devices; int /*<<< orphan*/  uevent_list; int /*<<< orphan*/  uevent_seq; int /*<<< orphan*/  event_nr; int /*<<< orphan*/  open_count; int /*<<< orphan*/  holders; int /*<<< orphan*/  deferred_lock; int /*<<< orphan*/  table_devices_lock; int /*<<< orphan*/  type_lock; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  type; int /*<<< orphan*/  io_barrier; } ;
struct TYPE_10__ {int first_minor; int /*<<< orphan*/  disk_name; struct mapped_device* private_data; TYPE_3__* queue; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;
struct TYPE_9__ {TYPE_1__* backing_dev_info; struct mapped_device* queuedata; } ;
struct TYPE_7__ {struct mapped_device* congested_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_DAX_DRIVER ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DM_ANY_MINOR ; 
 int /*<<< orphan*/  DM_TYPE_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* MINOR_ALLOCED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WQ_MEM_RECLAIM ; 
 int /*<<< orphan*/  _major ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_blk_dops ; 
 int /*<<< orphan*/  dm_dax_ops ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dm_wq_work ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 void* FUNC18 (int /*<<< orphan*/ *,struct mapped_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct mapped_device*) ; 
 struct mapped_device* FUNC23 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int FUNC26 (int*) ; 
 int FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mapped_device *FUNC33(int minor)
{
	int r, numa_node_id = FUNC14();
	struct mapped_device *md;
	void *old_md;

	md = FUNC23(sizeof(*md), GFP_KERNEL, numa_node_id);
	if (!md) {
		FUNC1("unable to allocate device, out of memory.");
		return NULL;
	}

	if (!FUNC32(THIS_MODULE))
		goto bad_module_get;

	/* get a minor number for the dev */
	if (minor == DM_ANY_MINOR)
		r = FUNC26(&minor);
	else
		r = FUNC27(minor);
	if (r < 0)
		goto bad_minor;

	r = FUNC20(&md->io_barrier);
	if (r < 0)
		goto bad_io_barrier;

	md->numa_node_id = numa_node_id;
	md->init_tio_pdu = false;
	md->type = DM_TYPE_NONE;
	FUNC25(&md->suspend_lock);
	FUNC25(&md->type_lock);
	FUNC25(&md->table_devices_lock);
	FUNC29(&md->deferred_lock);
	FUNC10(&md->holders, 1);
	FUNC10(&md->open_count, 0);
	FUNC10(&md->event_nr, 0);
	FUNC10(&md->uevent_seq, 0);
	FUNC2(&md->uevent_list);
	FUNC2(&md->table_devices);
	FUNC29(&md->uevent_lock);

	md->queue = FUNC12(GFP_KERNEL, numa_node_id);
	if (!md->queue)
		goto bad;
	md->queue->queuedata = md;
	md->queue->backing_dev_info->congested_data = md;

	md->disk = FUNC8(1, md->numa_node_id);
	if (!md->disk)
		goto bad;

	FUNC21(&md->wait);
	FUNC3(&md->work, dm_wq_work);
	FUNC21(&md->eventq);
	FUNC19(&md->kobj_holder.completion);

	md->disk->major = _major;
	md->disk->first_minor = minor;
	md->disk->fops = &dm_blk_dops;
	md->disk->queue = md->queue;
	md->disk->private_data = md;
	FUNC31(md->disk->disk_name, "dm-%d", minor);

	if (FUNC4(CONFIG_DAX_DRIVER)) {
		md->dax_dev = FUNC7(md, md->disk->disk_name,
					&dm_dax_ops, 0);
		if (!md->dax_dev)
			goto bad;
	}

	FUNC6(md->disk);
	FUNC16(md->name, FUNC5(_major, minor));

	md->wq = FUNC9("kdmflush", WQ_MEM_RECLAIM, 0);
	if (!md->wq)
		goto bad;

	md->bdev = FUNC11(md->disk, 0);
	if (!md->bdev)
		goto bad;

	FUNC15(&md->stats);

	/* Populate the mapping, nobody knows we exist yet */
	FUNC28(&_minor_lock);
	old_md = FUNC18(&_minor_idr, md, minor);
	FUNC30(&_minor_lock);

	FUNC0(old_md != MINOR_ALLOCED);

	return md;

bad:
	FUNC13(md);
bad_io_barrier:
	FUNC17(minor);
bad_minor:
	FUNC24(THIS_MODULE);
bad_module_get:
	FUNC22(md);
	return NULL;
}