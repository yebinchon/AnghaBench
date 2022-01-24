#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rchan {size_t subbuf_size; } ;
struct TYPE_9__ {struct rchan* channel; int /*<<< orphan*/  lock; } ;
struct intel_guc_log {TYPE_4__ relay; TYPE_1__* vma; } ;
struct intel_guc {int dummy; } ;
struct TYPE_8__ {TYPE_2__* primary; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_10__ {struct drm_i915_private* i915; } ;
struct TYPE_7__ {int /*<<< orphan*/  debugfs_root; } ;
struct TYPE_6__ {size_t size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct intel_guc* FUNC4 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  relay_callbacks ; 
 struct rchan* FUNC5 (char*,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ *,struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC6(struct intel_guc_log *log)
{
	struct intel_guc *guc = FUNC4(log);
	struct drm_i915_private *dev_priv = FUNC2(guc)->i915;
	struct rchan *guc_log_relay_chan;
	size_t n_subbufs, subbuf_size;
	int ret;

	FUNC3(&log->relay.lock);
	FUNC1(!log->vma);

	 /* Keep the size of sub buffers same as shared log buffer */
	subbuf_size = log->vma->size;

	/*
	 * Store up to 8 snapshots, which is large enough to buffer sufficient
	 * boot time logs and provides enough leeway to User, in terms of
	 * latency, for consuming the logs from relay. Also doesn't take
	 * up too much memory.
	 */
	n_subbufs = 8;

	guc_log_relay_chan = FUNC5("guc_log",
					dev_priv->drm.primary->debugfs_root,
					subbuf_size, n_subbufs,
					&relay_callbacks, dev_priv);
	if (!guc_log_relay_chan) {
		FUNC0("Couldn't create relay chan for GuC logging\n");

		ret = -ENOMEM;
		return ret;
	}

	FUNC1(guc_log_relay_chan->subbuf_size < subbuf_size);
	log->relay.channel = guc_log_relay_chan;

	return 0;
}