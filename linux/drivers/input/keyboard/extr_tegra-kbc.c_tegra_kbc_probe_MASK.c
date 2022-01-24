#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tegra_kbc {int max_keys; int num_rows_and_columns; scalar_t__ irq; int /*<<< orphan*/  wakeup; TYPE_4__* idev; int /*<<< orphan*/  keycode; TYPE_3__* hw_support; scalar_t__ keymap_data; scalar_t__ use_fn_map; scalar_t__ repoll_dly; scalar_t__ repeat_cnt; int /*<<< orphan*/  debounce_cnt; int /*<<< orphan*/  rst; int /*<<< orphan*/  clk; int /*<<< orphan*/  mmio; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct of_device_id {TYPE_3__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_9__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_12__ {int /*<<< orphan*/  evbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {int max_rows; int max_columns; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBC_CYCLE_MS ; 
 int /*<<< orphan*/  KBC_MAX_DEBOUNCE_CNT ; 
 scalar_t__ KBC_ROW_SCAN_DLY ; 
 unsigned int KBC_ROW_SCAN_TIME ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct resource*) ; 
 struct tegra_kbc* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_kbc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,struct tegra_kbc*) ; 
 int FUNC16 (scalar_t__,int /*<<< orphan*/ *,unsigned int,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct tegra_kbc*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct tegra_kbc*,int*) ; 
 int /*<<< orphan*/  tegra_kbc_close ; 
 int /*<<< orphan*/  tegra_kbc_isr ; 
 int /*<<< orphan*/  tegra_kbc_keypress_timer ; 
 int /*<<< orphan*/  tegra_kbc_of_match ; 
 int /*<<< orphan*/  tegra_kbc_open ; 
 int FUNC24 (struct tegra_kbc*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct platform_device *pdev)
{
	struct tegra_kbc *kbc;
	struct resource *res;
	int err;
	int num_rows = 0;
	unsigned int debounce_cnt;
	unsigned int scan_time_rows;
	unsigned int keymap_rows;
	const struct of_device_id *match;

	match = FUNC18(tegra_kbc_of_match, &pdev->dev);

	kbc = FUNC9(&pdev->dev, sizeof(*kbc), GFP_KERNEL);
	if (!kbc) {
		FUNC4(&pdev->dev, "failed to alloc memory for kbc\n");
		return -ENOMEM;
	}

	kbc->dev = &pdev->dev;
	kbc->hw_support = match->data;
	kbc->max_keys = kbc->hw_support->max_rows *
				kbc->hw_support->max_columns;
	kbc->num_rows_and_columns = kbc->hw_support->max_rows +
					kbc->hw_support->max_columns;
	keymap_rows = kbc->max_keys;
	FUNC22(&kbc->lock);

	err = FUNC24(kbc);
	if (err)
		return err;

	if (!FUNC23(kbc, &num_rows))
		return -EINVAL;

	kbc->irq = FUNC19(pdev, 0);
	if (kbc->irq < 0)
		return -ENXIO;

	kbc->idev = FUNC7(&pdev->dev);
	if (!kbc->idev) {
		FUNC4(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	FUNC25(&kbc->timer, tegra_kbc_keypress_timer, 0);

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	kbc->mmio = FUNC8(&pdev->dev, res);
	if (FUNC1(kbc->mmio))
		return FUNC2(kbc->mmio);

	kbc->clk = FUNC6(&pdev->dev, NULL);
	if (FUNC1(kbc->clk)) {
		FUNC4(&pdev->dev, "failed to get keyboard clock\n");
		return FUNC2(kbc->clk);
	}

	kbc->rst = FUNC11(&pdev->dev, "kbc");
	if (FUNC1(kbc->rst)) {
		FUNC4(&pdev->dev, "failed to get keyboard reset\n");
		return FUNC2(kbc->rst);
	}

	/*
	 * The time delay between two consecutive reads of the FIFO is
	 * the sum of the repeat time and the time taken for scanning
	 * the rows. There is an additional delay before the row scanning
	 * starts. The repoll delay is computed in milliseconds.
	 */
	debounce_cnt = FUNC17(kbc->debounce_cnt, KBC_MAX_DEBOUNCE_CNT);
	scan_time_rows = (KBC_ROW_SCAN_TIME + debounce_cnt) * num_rows;
	kbc->repoll_dly = KBC_ROW_SCAN_DLY + scan_time_rows + kbc->repeat_cnt;
	kbc->repoll_dly = FUNC0(kbc->repoll_dly, KBC_CYCLE_MS);

	kbc->idev->name = pdev->name;
	kbc->idev->id.bustype = BUS_HOST;
	kbc->idev->dev.parent = &pdev->dev;
	kbc->idev->open = tegra_kbc_open;
	kbc->idev->close = tegra_kbc_close;

	if (kbc->keymap_data && kbc->use_fn_map)
		keymap_rows *= 2;

	err = FUNC16(kbc->keymap_data, NULL,
					 keymap_rows,
					 kbc->hw_support->max_columns,
					 kbc->keycode, kbc->idev);
	if (err) {
		FUNC4(&pdev->dev, "failed to setup keymap\n");
		return err;
	}

	FUNC3(EV_REP, kbc->idev->evbit);
	FUNC14(kbc->idev, EV_MSC, MSC_SCAN);

	FUNC15(kbc->idev, kbc);

	err = FUNC10(&pdev->dev, kbc->irq, tegra_kbc_isr,
			       IRQF_TRIGGER_HIGH, pdev->name, kbc);
	if (err) {
		FUNC4(&pdev->dev, "failed to request keyboard IRQ\n");
		return err;
	}

	FUNC12(kbc->irq);

	err = FUNC13(kbc->idev);
	if (err) {
		FUNC4(&pdev->dev, "failed to register input device\n");
		return err;
	}

	FUNC21(pdev, kbc);
	FUNC5(&pdev->dev, kbc->wakeup);

	return 0;
}