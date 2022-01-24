#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; TYPE_2__* state; } ;
struct tegra_dc {TYPE_3__ base; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_5__ {int /*<<< orphan*/  active; } ;
struct TYPE_4__ {struct tegra_dc* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_COM_CRC_CHECKSUM ; 
 int /*<<< orphan*/  DC_COM_CRC_CONTROL ; 
 int DC_COM_CRC_CONTROL_ACTIVE_DATA ; 
 int DC_COM_CRC_CONTROL_ENABLE ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*) ; 
 int FUNC5 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *s, void *data)
{
	struct drm_info_node *node = s->private;
	struct tegra_dc *dc = node->info_ent->data;
	int err = 0;
	u32 value;

	FUNC1(&dc->base.mutex, NULL);

	if (!dc->base.state->active) {
		err = -EBUSY;
		goto unlock;
	}

	value = DC_COM_CRC_CONTROL_ACTIVE_DATA | DC_COM_CRC_CONTROL_ENABLE;
	FUNC6(dc, value, DC_COM_CRC_CONTROL);
	FUNC4(dc);

	FUNC0(&dc->base);
	FUNC0(&dc->base);

	value = FUNC5(dc, DC_COM_CRC_CHECKSUM);
	FUNC3(s, "%08x\n", value);

	FUNC6(dc, 0, DC_COM_CRC_CONTROL);

unlock:
	FUNC2(&dc->base.mutex);
	return err;
}