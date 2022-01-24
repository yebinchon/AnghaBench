#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct seq_file {struct drm_connector* private; } ;
struct intel_dp {int /*<<< orphan*/  aux; } ;
struct drm_connector {scalar_t__ status; scalar_t__ connector_type; } ;
struct dpcd_block {int end; int offset; size_t size; scalar_t__ edp; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int FUNC0 (struct dpcd_block*) ; 
 scalar_t__ DRM_MODE_CONNECTOR_eDP ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ connector_status_connected ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 struct intel_dp* FUNC3 (int /*<<< orphan*/ *) ; 
 struct dpcd_block* i915_dpcd_debug ; 
 TYPE_1__* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int,int,...) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *data)
{
	struct drm_connector *connector = m->private;
	struct intel_dp *intel_dp =
		FUNC3(&FUNC4(connector)->base);
	u8 buf[16];
	ssize_t err;
	int i;

	if (connector->status != connector_status_connected)
		return -ENODEV;

	for (i = 0; i < FUNC0(i915_dpcd_debug); i++) {
		const struct dpcd_block *b = &i915_dpcd_debug[i];
		size_t size = b->end ? b->end - b->offset + 1 : (b->size ?: 1);

		if (b->edp &&
		    connector->connector_type != DRM_MODE_CONNECTOR_eDP)
			continue;

		/* low tech for now */
		if (FUNC1(size > sizeof(buf)))
			continue;

		err = FUNC2(&intel_dp->aux, b->offset, buf, size);
		if (err < 0)
			FUNC5(m, "%04x: ERROR %d\n", b->offset, (int)err);
		else
			FUNC5(m, "%04x: %*ph\n", b->offset, (int)err, buf);
	}

	return 0;
}