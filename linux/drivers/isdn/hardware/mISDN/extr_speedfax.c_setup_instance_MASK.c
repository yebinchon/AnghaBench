#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_22__ {int (* init ) (TYPE_6__*) ;int (* firmware ) (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* release ) (TYPE_6__*) ;TYPE_4__* ch; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; void* ctrl; int /*<<< orphan*/ * hwlock; } ;
struct TYPE_17__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_16__ {int /*<<< orphan*/  bchannels; int /*<<< orphan*/  channelmap; int /*<<< orphan*/  Bprotocols; TYPE_1__ D; } ;
struct TYPE_21__ {TYPE_13__ dev; } ;
struct TYPE_23__ {int /*<<< orphan*/  (* release ) (TYPE_7__*) ;TYPE_5__ dch; int /*<<< orphan*/  name; int /*<<< orphan*/ * hwlock; } ;
struct sfax_hw {int /*<<< orphan*/  list; TYPE_10__* pdev; TYPE_6__ isar; TYPE_7__ isac; int /*<<< orphan*/  cfg; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_18__ {int /*<<< orphan*/  list; } ;
struct TYPE_19__ {TYPE_2__ ch; } ;
struct TYPE_20__ {TYPE_3__ bch; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cards ; 
 int DEBUG_HW ; 
 scalar_t__ MISDN_MAX_IDLEN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct sfax_hw*) ; 
 int /*<<< orphan*/  card_lock ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sfax_hw*) ; 
 int FUNC3 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_13__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,struct sfax_hw*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct sfax_hw*) ; 
 int sfax_cnt ; 
 int /*<<< orphan*/  sfax_ctrl ; 
 int /*<<< orphan*/  sfax_dctrl ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (TYPE_6__*) ; 
 int FUNC23 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC28(struct sfax_hw *card)
{
	const struct firmware *firmware;
	int i, err;
	u_long flags;

	FUNC20(card->name, MISDN_MAX_IDLEN - 1, "Speedfax.%d", sfax_cnt + 1);
	FUNC26(&card_lock, flags);
	FUNC6(&card->list, &Cards);
	FUNC27(&card_lock, flags);
	FUNC0(card);
	FUNC21(&card->lock);
	card->isac.hwlock = &card->lock;
	card->isar.hwlock = &card->lock;
	card->isar.ctrl = (void *)&sfax_ctrl;
	card->isac.name = card->name;
	card->isar.name = card->name;
	card->isar.owner = THIS_MODULE;

	err = FUNC17(&firmware, "isdn/ISAR.BIN", &card->pdev->dev);
	if (err < 0) {
		FUNC13("%s: firmware request failed %d\n",
			card->name, err);
		goto error_fw;
	}
	if (debug & DEBUG_HW)
		FUNC14("%s: got firmware %zu bytes\n",
			  card->name, firmware->size);

	FUNC10(&card->isac, card);

	card->isac.dch.dev.D.ctrl = sfax_dctrl;
	card->isac.dch.dev.Bprotocols =
		FUNC11(&card->isar, card);
	for (i = 0; i < 2; i++) {
		FUNC18(i + 1, card->isac.dch.dev.channelmap);
		FUNC5(&card->isar.ch[i].bch.ch.list,
			 &card->isac.dch.dev.bchannels);
	}

	err = FUNC19(card);
	if (err)
		goto error_setup;
	err = card->isar.init(&card->isar);
	if (err)
		goto error;
	err = FUNC8(&card->isac.dch.dev,
				    &card->pdev->dev, card->name);
	if (err)
		goto error;
	err = FUNC3(card);
	if (err)
		goto error_init;
	err = card->isar.firmware(&card->isar, firmware->data, firmware->size);
	if (!err)  {
		FUNC15(firmware);
		sfax_cnt++;
		FUNC14("SpeedFax %d cards installed\n", sfax_cnt);
		return 0;
	}
	FUNC1(card);
	FUNC2(card->irq, card);
error_init:
	FUNC9(&card->isac.dch.dev);
error:
	FUNC16(card->cfg, 256);
error_setup:
	card->isac.release(&card->isac);
	card->isar.release(&card->isar);
	FUNC15(firmware);
error_fw:
	FUNC12(card->pdev);
	FUNC26(&card_lock, flags);
	FUNC7(&card->list);
	FUNC27(&card_lock, flags);
	FUNC4(card);
	return err;
}