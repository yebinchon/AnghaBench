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
struct module {int dummy; } ;
struct dvb_adapter {int num; char const* name; int /*<<< orphan*/  list_head; int /*<<< orphan*/  mdev_lock; int /*<<< orphan*/  mfe_lock; int /*<<< orphan*/ * mfe_dvbdev; scalar_t__ mfe_shared; struct device* device; struct module* module; int /*<<< orphan*/  device_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DVB_MAX_ADAPTERS ; 
 int ENFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dvb_adapter_list ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  dvbdev_register_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

int FUNC9(struct dvb_adapter *adap, const char *name,
			 struct module *module, struct device *device,
			 short *adapter_nums)
{
	int i, num;

	FUNC6(&dvbdev_register_lock);

	for (i = 0; i < DVB_MAX_ADAPTERS; ++i) {
		num = adapter_nums[i];
		if (num >= 0  &&  num < DVB_MAX_ADAPTERS) {
		/* use the one the driver asked for */
			if (FUNC1(num))
				break;
		} else {
			num = FUNC2();
			break;
		}
		num = -1;
	}

	if (num < 0) {
		FUNC7(&dvbdev_register_lock);
		return -ENFILE;
	}

	FUNC4 (adap, 0, sizeof(struct dvb_adapter));
	FUNC0 (&adap->device_list);

	FUNC8("DVB: registering new adapter (%s)\n", name);

	adap->num = num;
	adap->name = name;
	adap->module = module;
	adap->device = device;
	adap->mfe_shared = 0;
	adap->mfe_dvbdev = NULL;
	FUNC5 (&adap->mfe_lock);

#ifdef CONFIG_MEDIA_CONTROLLER_DVB
	mutex_init(&adap->mdev_lock);
#endif

	FUNC3 (&adap->list_head, &dvb_adapter_list);

	FUNC7(&dvbdev_register_lock);

	return num;
}