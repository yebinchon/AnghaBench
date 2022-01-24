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
struct device_driver {int dummy; } ;
struct dax_id {int /*<<< orphan*/  list; int /*<<< orphan*/  dev_name; } ;
struct dax_device_driver {int /*<<< orphan*/  ids; } ;
typedef  int ssize_t ;
typedef  enum id_action { ____Placeholder_id_action } id_action ;

/* Variables and functions */
 int DAX_NAME_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ID_ADD ; 
 int ID_REMOVE ; 
 struct dax_id* FUNC0 (struct dax_device_driver*,char const*) ; 
 int /*<<< orphan*/  dax_bus_lock ; 
 int FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct dax_id*) ; 
 struct dax_id* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int,unsigned int) ; 
 int FUNC9 (char const*,char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 struct dax_device_driver* FUNC12 (struct device_driver*) ; 

__attribute__((used)) static ssize_t FUNC13(struct device_driver *drv, const char *buf,
		size_t count, enum id_action action)
{
	struct dax_device_driver *dax_drv = FUNC12(drv);
	unsigned int region_id, id;
	char devname[DAX_NAME_LEN];
	struct dax_id *dax_id;
	ssize_t rc = count;
	int fields;

	fields = FUNC9(buf, "dax%d.%d", &region_id, &id);
	if (fields != 2)
		return -EINVAL;
	FUNC8(devname, "dax%d.%d", region_id, id);
	if (!FUNC11(buf, devname))
		return -EINVAL;

	FUNC6(&dax_bus_lock);
	dax_id = FUNC0(dax_drv, buf);
	if (!dax_id) {
		if (action == ID_ADD) {
			dax_id = FUNC3(sizeof(*dax_id), GFP_KERNEL);
			if (dax_id) {
				FUNC10(dax_id->dev_name, buf, DAX_NAME_LEN);
				FUNC4(&dax_id->list, &dax_drv->ids);
			} else
				rc = -ENOMEM;
		} else
			/* nothing to remove */;
	} else if (action == ID_REMOVE) {
		FUNC5(&dax_id->list);
		FUNC2(dax_id);
	} else
		/* dax_id already added */;
	FUNC7(&dax_bus_lock);

	if (rc < 0)
		return rc;
	if (action == ID_ADD)
		rc = FUNC1(drv);
	if (rc)
		return rc;
	return count;
}