#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sh_keysc_info {size_t mode; int* keycodes; int /*<<< orphan*/  delay; } ;
struct sh_keysc_priv {int /*<<< orphan*/  input; int /*<<< orphan*/  last_keys; struct sh_keysc_info pdata; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int keyout; int keyin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KYCR2 ; 
 int KYCR2_IRQ_DISABLED ; 
 int /*<<< orphan*/  KYINDR ; 
 int /*<<< orphan*/  KYOUTDR ; 
 int SH_KEYSC_MAXKEYS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keys ; 
 int /*<<< orphan*/  keys0 ; 
 int /*<<< orphan*/  keys1 ; 
 struct sh_keysc_priv* FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct sh_keysc_priv*,unsigned char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* sh_keysc_mode ; 
 int FUNC14 (struct sh_keysc_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sh_keysc_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC18(int irq, void *dev_id)
{
	struct platform_device *pdev = dev_id;
	struct sh_keysc_priv *priv = FUNC11(pdev);
	struct sh_keysc_info *pdata = &priv->pdata;
	int keyout_nr = sh_keysc_mode[pdata->mode].keyout;
	int keyin_nr = sh_keysc_mode[pdata->mode].keyin;
	FUNC0(keys, SH_KEYSC_MAXKEYS);
	FUNC0(keys0, SH_KEYSC_MAXKEYS);
	FUNC0(keys1, SH_KEYSC_MAXKEYS);
	unsigned char keyin_set, tmp;
	int i, k, n;

	FUNC8(&pdev->dev, "isr!\n");

	FUNC5(keys1, SH_KEYSC_MAXKEYS);
	FUNC7(keys0, SH_KEYSC_MAXKEYS);

	do {
		FUNC7(keys, SH_KEYSC_MAXKEYS);
		keyin_set = 0;

		FUNC15(priv, KYCR2, KYCR2_IRQ_DISABLED);

		for (i = 0; i < keyout_nr; i++) {
			n = keyin_nr * i;

			/* drive one KEYOUT pin low, read KEYIN pins */
			FUNC15(priv, KYOUTDR, 0xffff ^ (3 << (i * 2)));
			FUNC17(pdata->delay);
			tmp = FUNC14(priv, KYINDR);

			/* set bit if key press has been detected */
			for (k = 0; k < keyin_nr; k++) {
				if (tmp & (1 << k))
					FUNC2(n + k, keys);
			}

			/* keep track of which KEYIN bits that have been set */
			keyin_set |= tmp ^ ((1 << keyin_nr) - 1);
		}

		FUNC12(priv, keyin_set);

		FUNC4(keys, keys, SH_KEYSC_MAXKEYS);
		FUNC3(keys1, keys1, keys, SH_KEYSC_MAXKEYS);
		FUNC6(keys0, keys0, keys, SH_KEYSC_MAXKEYS);

		FUNC13(&pdev->dev, keys, "keys");

	} while (FUNC14(priv, KYCR2) & 0x01);

	FUNC13(&pdev->dev, priv->last_keys, "last_keys");
	FUNC13(&pdev->dev, keys0, "keys0");
	FUNC13(&pdev->dev, keys1, "keys1");

	for (i = 0; i < SH_KEYSC_MAXKEYS; i++) {
		k = pdata->keycodes[i];
		if (!k)
			continue;

		if (FUNC16(i, keys0) == FUNC16(i, priv->last_keys))
			continue;

		if (FUNC16(i, keys1) || FUNC16(i, keys0)) {
			FUNC9(priv->input, EV_KEY, k, 1);
			FUNC2(i, priv->last_keys);
		}

		if (!FUNC16(i, keys1)) {
			FUNC9(priv->input, EV_KEY, k, 0);
			FUNC1(i, priv->last_keys);
		}

	}
	FUNC10(priv->input);

	return IRQ_HANDLED;
}