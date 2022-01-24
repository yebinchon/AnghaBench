#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  release; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * parent; } ;
struct TYPE_4__ {int n_links; TYPE_1__ dev; int /*<<< orphan*/  link_config; int /*<<< orphan*/  link_enable; int /*<<< orphan*/  send_break; int /*<<< orphan*/  term; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  flags; } ;
struct fsi_master_gpio {TYPE_2__ master; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  t_echo_delay; int /*<<< orphan*/  t_send_delay; int /*<<< orphan*/  no_delays; struct gpio_desc* gpio_mux; struct gpio_desc* gpio_enable; struct gpio_desc* gpio_trans; struct gpio_desc* gpio_data; struct gpio_desc* gpio_clk; int /*<<< orphan*/  last_addr; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FSI_ECHO_DELAY_CLOCKS ; 
 int /*<<< orphan*/  FSI_MASTER_FLAG_SWCLOCK ; 
 int /*<<< orphan*/  FSI_SEND_DELAY_CLOCKS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  LAST_ADDR_INVALID ; 
 int FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  dev_attr_external_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsi_master_gpio_break ; 
 int /*<<< orphan*/  FUNC9 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  fsi_master_gpio_link_config ; 
 int /*<<< orphan*/  fsi_master_gpio_link_enable ; 
 int /*<<< orphan*/  fsi_master_gpio_read ; 
 int /*<<< orphan*/  fsi_master_gpio_release ; 
 int /*<<< orphan*/  fsi_master_gpio_term ; 
 int /*<<< orphan*/  fsi_master_gpio_write ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsi_master_gpio*) ; 
 struct fsi_master_gpio* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct fsi_master_gpio *master;
	struct gpio_desc *gpio;
	int rc;

	master = FUNC12(sizeof(*master), GFP_KERNEL);
	if (!master)
		return -ENOMEM;

	master->dev = &pdev->dev;
	master->master.dev.parent = master->dev;
	master->master.dev.of_node = FUNC14(FUNC3(master->dev));
	master->master.dev.release = fsi_master_gpio_release;
	master->last_addr = LAST_ADDR_INVALID;

	gpio = FUNC7(&pdev->dev, "clock", 0);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "failed to get clock gpio\n");
		rc = FUNC1(gpio);
		goto err_free;
	}
	master->gpio_clk = gpio;

	gpio = FUNC7(&pdev->dev, "data", 0);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "failed to get data gpio\n");
		rc = FUNC1(gpio);
		goto err_free;
	}
	master->gpio_data = gpio;

	/* Optional GPIOs */
	gpio = FUNC8(&pdev->dev, "trans", 0);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "failed to get trans gpio\n");
		rc = FUNC1(gpio);
		goto err_free;
	}
	master->gpio_trans = gpio;

	gpio = FUNC8(&pdev->dev, "enable", 0);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "failed to get enable gpio\n");
		rc = FUNC1(gpio);
		goto err_free;
	}
	master->gpio_enable = gpio;

	gpio = FUNC8(&pdev->dev, "mux", 0);
	if (FUNC0(gpio)) {
		FUNC2(&pdev->dev, "failed to get mux gpio\n");
		rc = FUNC1(gpio);
		goto err_free;
	}
	master->gpio_mux = gpio;

	/*
	 * Check if GPIO block is slow enought that no extra delays
	 * are necessary. This improves performance on ast2500 by
	 * an order of magnitude.
	 */
	master->no_delays = FUNC5(&pdev->dev, "no-gpio-delays");

	/* Default FSI command delays */
	master->t_send_delay = FSI_SEND_DELAY_CLOCKS;
	master->t_echo_delay = FSI_ECHO_DELAY_CLOCKS;

	master->master.n_links = 1;
	master->master.flags = FSI_MASTER_FLAG_SWCLOCK;
	master->master.read = fsi_master_gpio_read;
	master->master.write = fsi_master_gpio_write;
	master->master.term = fsi_master_gpio_term;
	master->master.send_break = fsi_master_gpio_break;
	master->master.link_enable = fsi_master_gpio_link_enable;
	master->master.link_config = fsi_master_gpio_link_config;
	FUNC15(pdev, master);
	FUNC13(&master->cmd_lock);

	FUNC9(master);

	rc = FUNC4(&pdev->dev, &dev_attr_external_mode);
	if (rc)
		goto err_free;

	rc = FUNC10(&master->master);
	if (rc) {
		FUNC6(&pdev->dev, &dev_attr_external_mode);
		FUNC16(&master->master.dev);
		return rc;
	}
	return 0;
 err_free:
	FUNC11(master);
	return rc;
}