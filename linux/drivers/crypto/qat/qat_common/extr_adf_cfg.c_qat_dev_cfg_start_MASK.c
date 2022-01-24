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
struct seq_file {struct adf_cfg_device_data* private; } ;
struct adf_cfg_device_data {int /*<<< orphan*/  sec_list; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qat_cfg_read_lock ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct seq_file *sfile, loff_t *pos)
{
	struct adf_cfg_device_data *dev_cfg = sfile->private;

	FUNC0(&qat_cfg_read_lock);
	return FUNC1(&dev_cfg->sec_list, *pos);
}