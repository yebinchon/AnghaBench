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
struct spi_device {int bits_per_word; int /*<<< orphan*/  dev; TYPE_2__* master; int /*<<< orphan*/  mode; } ;
struct psxpad {int /*<<< orphan*/  phys; struct spi_device* spi; struct input_polled_dev* pdev; } ;
struct input_polled_dev {int poll_interval; int poll_interval_min; int poll_interval_max; struct input_dev* input; int /*<<< orphan*/  poll; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct psxpad* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; TYPE_1__ id; } ;
struct TYPE_4__ {int min_speed_hz; int max_speed_hz; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_DPAD_DOWN ; 
 int /*<<< orphan*/  BTN_DPAD_LEFT ; 
 int /*<<< orphan*/  BTN_DPAD_RIGHT ; 
 int /*<<< orphan*/  BTN_DPAD_UP ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 int /*<<< orphan*/  BTN_TL ; 
 int /*<<< orphan*/  BTN_TL2 ; 
 int /*<<< orphan*/  BTN_TR ; 
 int /*<<< orphan*/  BTN_TR2 ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BUS_SPI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct psxpad* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct input_polled_dev* FUNC3 () ; 
 int FUNC4 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct psxpad*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct psxpad*) ; 
 int /*<<< orphan*/  psxpad_spi_poll ; 
 int /*<<< orphan*/  psxpad_spi_poll_close ; 
 int /*<<< orphan*/  psxpad_spi_poll_open ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct psxpad *pad;
	struct input_polled_dev *pdev;
	struct input_dev *idev;
	int err;

	pad = FUNC2(&spi->dev, sizeof(struct psxpad), GFP_KERNEL);
	if (!pad)
		return -ENOMEM;

	pdev = FUNC3();
	if (!pdev) {
		FUNC0(&spi->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	/* input poll device settings */
	pad->pdev = pdev;
	pad->spi = spi;

	pdev->private = pad;
	pdev->open = psxpad_spi_poll_open;
	pdev->close = psxpad_spi_poll_close;
	pdev->poll = psxpad_spi_poll;
	/* poll interval is about 60fps */
	pdev->poll_interval = 16;
	pdev->poll_interval_min = 8;
	pdev->poll_interval_max = 32;

	/* input device settings */
	idev = pdev->input;
	idev->name = "PlayStation 1/2 joypad";
	FUNC10(pad->phys, sizeof(pad->phys), "%s/input", FUNC1(&spi->dev));
	idev->id.bustype = BUS_SPI;

	/* key/value map settings */
	FUNC5(idev, ABS_X, 0, 255, 0, 0);
	FUNC5(idev, ABS_Y, 0, 255, 0, 0);
	FUNC5(idev, ABS_RX, 0, 255, 0, 0);
	FUNC5(idev, ABS_RY, 0, 255, 0, 0);
	FUNC6(idev, EV_KEY, BTN_DPAD_UP);
	FUNC6(idev, EV_KEY, BTN_DPAD_DOWN);
	FUNC6(idev, EV_KEY, BTN_DPAD_LEFT);
	FUNC6(idev, EV_KEY, BTN_DPAD_RIGHT);
	FUNC6(idev, EV_KEY, BTN_A);
	FUNC6(idev, EV_KEY, BTN_B);
	FUNC6(idev, EV_KEY, BTN_X);
	FUNC6(idev, EV_KEY, BTN_Y);
	FUNC6(idev, EV_KEY, BTN_TL);
	FUNC6(idev, EV_KEY, BTN_TR);
	FUNC6(idev, EV_KEY, BTN_TL2);
	FUNC6(idev, EV_KEY, BTN_TR2);
	FUNC6(idev, EV_KEY, BTN_THUMBL);
	FUNC6(idev, EV_KEY, BTN_THUMBR);
	FUNC6(idev, EV_KEY, BTN_SELECT);
	FUNC6(idev, EV_KEY, BTN_START);

	err = FUNC9(pad);
	if (err)
		return err;

	/* SPI settings */
	spi->mode = SPI_MODE_3;
	spi->bits_per_word = 8;
	/* (PlayStation 1/2 joypad might be possible works 250kHz/500kHz) */
	spi->master->min_speed_hz = 125000;
	spi->master->max_speed_hz = 125000;
	FUNC11(spi);

	/* pad settings */
	FUNC8(pad, 0, 0);

	/* register input poll device */
	err = FUNC4(pdev);
	if (err) {
		FUNC0(&spi->dev,
			"failed to register input poll device: %d\n", err);
		return err;
	}

	FUNC7(&spi->dev);

	return 0;
}