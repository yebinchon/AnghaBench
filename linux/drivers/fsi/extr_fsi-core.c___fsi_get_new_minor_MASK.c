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
struct fsi_slave {int chip_id; } ;
typedef  enum fsi_dev_type { ____Placeholder_fsi_dev_type } fsi_dev_type ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FSI_CHAR_LEGACY_TOP ; 
 int FSI_CHAR_MAX_DEVICES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int) ; 
 scalar_t__ fsi_base_dev ; 
 int /*<<< orphan*/  fsi_minor_ida ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fsi_slave *slave, enum fsi_dev_type type,
			       dev_t *out_dev, int *out_index)
{
	int cid = slave->chip_id;
	int id;

	/* Check if we qualify for legacy numbering */
	if (cid >= 0 && cid < 16 && type < 4) {
		/* Try reserving the legacy number */
		id = (cid << 4) | type;
		id = FUNC1(&fsi_minor_ida, id, id + 1, GFP_KERNEL);
		if (id >= 0) {
			*out_index = FUNC0(cid);
			*out_dev = fsi_base_dev + id;
			return 0;
		}
		/* Other failure */
		if (id != -ENOSPC)
			return id;
		/* Fallback to non-legacy allocation */
	}
	id = FUNC1(&fsi_minor_ida, FSI_CHAR_LEGACY_TOP,
			    FSI_CHAR_MAX_DEVICES, GFP_KERNEL);
	if (id < 0)
		return id;
	*out_index = FUNC0(id);
	*out_dev = fsi_base_dev + id;
	return 0;
}