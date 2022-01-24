#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  parent; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; } ;
struct i2c_adapter {scalar_t__ timeout; scalar_t__ nr; int /*<<< orphan*/  dev_released; TYPE_1__ dev; int /*<<< orphan*/ * name; int /*<<< orphan*/  userspace_clients; int /*<<< orphan*/  userspace_clients_lock; int /*<<< orphan*/  mux_lock; int /*<<< orphan*/  bus_lock; scalar_t__ locked_flags; int /*<<< orphan*/ * lock_ops; int /*<<< orphan*/  algo; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ __i2c_first_dynamic_bus_num ; 
 int /*<<< orphan*/  __process_new_adapter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_adapter_compat_class ; 
 int /*<<< orphan*/  i2c_adapter_idr ; 
 int /*<<< orphan*/  i2c_adapter_lock_ops ; 
 int /*<<< orphan*/  i2c_adapter_type ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_adapter*) ; 
 int FUNC14 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  is_registered ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct i2c_adapter*) ; 
 int FUNC21 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct i2c_adapter *adap)
{
	int res = -EINVAL;

	/* Can't register until after driver model init */
	if (FUNC2(!is_registered)) {
		res = -EAGAIN;
		goto out_list;
	}

	/* Sanity checks */
	if (FUNC1(!adap->name[0], "i2c adapter has no name"))
		goto out_list;

	if (!adap->algo) {
		FUNC25("adapter '%s': no algo supplied!\n", adap->name);
		goto out_list;
	}

	if (!adap->lock_ops)
		adap->lock_ops = &i2c_adapter_lock_ops;

	adap->locked_flags = 0;
	FUNC26(&adap->bus_lock);
	FUNC26(&adap->mux_lock);
	FUNC17(&adap->userspace_clients_lock);
	FUNC0(&adap->userspace_clients);

	/* Set default timeout to 1 second if not already set */
	if (adap->timeout == 0)
		adap->timeout = HZ;

	/* register soft irqs for Host Notify */
	res = FUNC14(adap);
	if (res) {
		FUNC25("adapter '%s': can't create Host Notify IRQs (%d)\n",
		       adap->name, res);
		goto out_list;
	}

	FUNC6(&adap->dev, "i2c-%d", adap->nr);
	adap->dev.bus = &i2c_bus_type;
	adap->dev.type = &i2c_adapter_type;
	res = FUNC8(&adap->dev);
	if (res) {
		FUNC25("adapter '%s': can't register device (%d)\n", adap->name, res);
		goto out_list;
	}

	res = FUNC21(adap);
	if (res)
		goto out_reg;

	FUNC5(&adap->dev, "adapter [%s] registered\n", adap->name);

	FUNC23(&adap->dev);
	FUNC24(&adap->dev, true);
	FUNC22(&adap->dev);

#ifdef CONFIG_I2C_COMPAT
	res = class_compat_create_link(i2c_adapter_compat_class, &adap->dev,
				       adap->dev.parent);
	if (res)
		dev_warn(&adap->dev,
			 "Failed to create compatibility class link\n");
#endif

	FUNC12(adap);

	/* create pre-declared device nodes */
	FUNC20(adap);
	FUNC11(adap);
	FUNC10(adap);

	if (adap->nr < __i2c_first_dynamic_bus_num)
		FUNC13(adap);

	/* Notify drivers */
	FUNC18(&core_lock);
	FUNC3(&i2c_bus_type, NULL, adap, __process_new_adapter);
	FUNC19(&core_lock);

	return 0;

out_reg:
	FUNC16(&adap->dev_released);
	FUNC9(&adap->dev);
	FUNC27(&adap->dev_released);
out_list:
	FUNC18(&core_lock);
	FUNC15(&i2c_adapter_idr, adap->nr);
	FUNC19(&core_lock);
	return res;
}