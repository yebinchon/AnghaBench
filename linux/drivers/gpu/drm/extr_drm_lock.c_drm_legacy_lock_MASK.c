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
struct TYPE_8__ {TYPE_2__* hw_lock; int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  user_waiters; int /*<<< orphan*/  lock_time; struct drm_file* file_priv; } ;
struct drm_master {TYPE_4__ lock; } ;
struct drm_lock {scalar_t__ context; int flags; } ;
struct drm_file {int /*<<< orphan*/  lock_count; struct drm_master* master; } ;
struct TYPE_5__ {scalar_t__ context; TYPE_2__* lock; } ;
struct drm_device {TYPE_3__* driver; TYPE_1__ sigdata; } ;
struct TYPE_7__ {scalar_t__ (* dma_quiescent ) (struct drm_device*) ;} ;
struct TYPE_6__ {int lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DRM_KERNEL_CONTEXT ; 
 int EBUSY ; 
 int EINTR ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int _DRM_LOCK_QUIESCENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_global_mutex ; 
 int /*<<< orphan*/  FUNC6 (struct drm_file*) ; 
 scalar_t__ FUNC7 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int FUNC18(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	FUNC0(entry, current);
	struct drm_lock *lock = data;
	struct drm_master *master = file_priv->master;
	int ret = 0;

	if (!FUNC5(dev, DRIVER_LEGACY))
		return -EOPNOTSUPP;

	++file_priv->lock_count;

	if (lock->context == DRM_KERNEL_CONTEXT) {
		FUNC2("Process %d using kernel context %d\n",
			  FUNC17(current), lock->context);
		return -EINVAL;
	}

	FUNC1("%d (pid %d) requests lock (0x%08x), flags = 0x%08x\n",
		  lock->context, FUNC17(current),
		  master->lock.hw_lock ? master->lock.hw_lock->lock : -1,
		  lock->flags);

	FUNC4(&master->lock.lock_queue, &entry);
	FUNC14(&master->lock.spinlock);
	master->lock.user_waiters++;
	FUNC15(&master->lock.spinlock);

	for (;;) {
		FUNC3(TASK_INTERRUPTIBLE);
		if (!master->lock.hw_lock) {
			/* Device has been unregistered */
			FUNC12(SIGTERM, current, 0);
			ret = -EINTR;
			break;
		}
		if (FUNC7(&master->lock, lock->context)) {
			master->lock.file_priv = file_priv;
			master->lock.lock_time = jiffies;
			break;	/* Got lock */
		}

		/* Contention */
		FUNC9(&drm_global_mutex);
		FUNC11();
		FUNC8(&drm_global_mutex);
		if (FUNC13(current)) {
			ret = -EINTR;
			break;
		}
	}
	FUNC14(&master->lock.spinlock);
	master->lock.user_waiters--;
	FUNC15(&master->lock.spinlock);
	FUNC3(TASK_RUNNING);
	FUNC10(&master->lock.lock_queue, &entry);

	FUNC1("%d %s\n", lock->context,
		  ret ? "interrupted" : "has lock");
	if (ret) return ret;

	/* don't set the block all signals on the master process for now 
	 * really probably not the correct answer but lets us debug xkb
 	 * xserver for now */
	if (!FUNC6(file_priv)) {
		dev->sigdata.context = lock->context;
		dev->sigdata.lock = master->lock.hw_lock;
	}

	if (dev->driver->dma_quiescent && (lock->flags & _DRM_LOCK_QUIESCENT))
	{
		if (dev->driver->dma_quiescent(dev)) {
			FUNC1("%d waiting for DMA quiescent\n",
				  lock->context);
			return -EBUSY;
		}
	}

	return 0;
}