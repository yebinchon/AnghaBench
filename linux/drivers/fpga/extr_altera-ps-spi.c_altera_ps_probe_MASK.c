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
struct TYPE_10__ {scalar_t__ of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct fpga_manager {int dummy; } ;
struct altera_ps_conf {int /*<<< orphan*/  mgr_name; void* confd; void* status; void* config; struct spi_device* spi; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  altera_ps_ops ; 
 char* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 struct fpga_manager* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct altera_ps_conf*) ; 
 void* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct altera_ps_conf* FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct fpga_manager*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_ef_match ; 
 struct of_device_id* FUNC12 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct spi_device*,struct fpga_manager*) ; 

__attribute__((used)) static int FUNC16(struct spi_device *spi)
{
	struct altera_ps_conf *conf;
	const struct of_device_id *of_id;
	struct fpga_manager *mgr;

	conf = FUNC9(&spi->dev, sizeof(*conf), GFP_KERNEL);
	if (!conf)
		return -ENOMEM;

	if (spi->dev.of_node) {
		of_id = FUNC12(of_ef_match, &spi->dev);
		if (!of_id)
			return -ENODEV;
		conf->data = of_id->data;
	} else {
		conf->data = FUNC11(FUNC14(spi));
		if (!conf->data)
			return -ENODEV;
	}

	conf->spi = spi;
	conf->config = FUNC7(&spi->dev, "nconfig", GPIOD_OUT_LOW);
	if (FUNC0(conf->config)) {
		FUNC3(&spi->dev, "Failed to get config gpio: %ld\n",
			FUNC1(conf->config));
		return FUNC1(conf->config);
	}

	conf->status = FUNC7(&spi->dev, "nstat", GPIOD_IN);
	if (FUNC0(conf->status)) {
		FUNC3(&spi->dev, "Failed to get status gpio: %ld\n",
			FUNC1(conf->status));
		return FUNC1(conf->status);
	}

	conf->confd = FUNC8(&spi->dev, "confd", GPIOD_IN);
	if (FUNC0(conf->confd)) {
		FUNC3(&spi->dev, "Failed to get confd gpio: %ld\n",
			FUNC1(conf->confd));
		return FUNC1(conf->confd);
	} else if (!conf->confd) {
		FUNC5(&spi->dev, "Not using confd gpio");
	}

	/* Register manager with unique name */
	FUNC13(conf->mgr_name, sizeof(conf->mgr_name), "%s %s",
		 FUNC2(&spi->dev), FUNC4(&spi->dev));

	mgr = FUNC6(&spi->dev, conf->mgr_name,
				   &altera_ps_ops, conf);
	if (!mgr)
		return -ENOMEM;

	FUNC15(spi, mgr);

	return FUNC10(mgr);
}