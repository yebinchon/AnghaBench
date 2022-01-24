#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_11__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_16__ {int Bprotocols; int /*<<< orphan*/  bchannels; int /*<<< orphan*/  channelmap; TYPE_1__ D; } ;
struct TYPE_14__ {TYPE_7__ dev; } ;
struct TYPE_15__ {int /*<<< orphan*/  (* release ) (TYPE_5__*) ;TYPE_4__ dch; int /*<<< orphan*/ * hwlock; int /*<<< orphan*/  name; } ;
struct fritzcard {scalar_t__ type; int /*<<< orphan*/  list; TYPE_9__* bch; TYPE_5__ isac; int /*<<< orphan*/  addr; int /*<<< orphan*/  name; TYPE_3__* pdev; int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {int nr; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  send; } ;
struct TYPE_17__ {int nr; TYPE_2__ ch; struct fritzcard* hw; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AVM_FRITZ_PCIV2 ; 
 int AVM_cnt ; 
 int /*<<< orphan*/  Cards ; 
 unsigned short HDLC_FIFO_SIZE_V1 ; 
 unsigned short HDLC_FIFO_SIZE_V2 ; 
 int ISDN_P_B_HDLC ; 
 int ISDN_P_B_MASK ; 
 int ISDN_P_B_RAW ; 
 int /*<<< orphan*/  MAX_DATA_MEM ; 
 scalar_t__ MISDN_MAX_IDLEN ; 
 int /*<<< orphan*/  FUNC0 (struct fritzcard*) ; 
 int /*<<< orphan*/  avm_bctrl ; 
 int /*<<< orphan*/  avm_dctrl ; 
 int /*<<< orphan*/  avm_l2l1B ; 
 int /*<<< orphan*/  card_lock ; 
 int FUNC1 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC2 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ ,unsigned short) ; 
 int FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct fritzcard*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(struct fritzcard *card)
{
	int i, err;
	unsigned short minsize;
	u_long flags;

	FUNC15(card->name, MISDN_MAX_IDLEN - 1, "AVM.%d", AVM_cnt + 1);
	FUNC18(&card_lock, flags);
	FUNC4(&card->list, &Cards);
	FUNC19(&card_lock, flags);

	FUNC0(card);
	card->isac.name = card->name;
	FUNC16(&card->lock);
	card->isac.hwlock = &card->lock;
	FUNC10(&card->isac, card);

	card->isac.dch.dev.Bprotocols = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
		(1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
	card->isac.dch.dev.D.ctrl = avm_dctrl;
	for (i = 0; i < 2; i++) {
		card->bch[i].nr = i + 1;
		FUNC13(i + 1, card->isac.dch.dev.channelmap);
		if (AVM_FRITZ_PCIV2 == card->type)
			minsize = HDLC_FIFO_SIZE_V2;
		else
			minsize = HDLC_FIFO_SIZE_V1;
		FUNC7(&card->bch[i], MAX_DATA_MEM, minsize);
		card->bch[i].hw = card;
		card->bch[i].ch.send = avm_l2l1B;
		card->bch[i].ch.ctrl = avm_bctrl;
		card->bch[i].ch.nr = i + 1;
		FUNC3(&card->bch[i].ch.list, &card->isac.dch.dev.bchannels);
	}
	err = FUNC14(card);
	if (err)
		goto error;
	err = FUNC8(&card->isac.dch.dev, &card->pdev->dev,
				    card->name);
	if (err)
		goto error_reg;
	err = FUNC1(card);
	if (!err)  {
		AVM_cnt++;
		FUNC11("AVM %d cards installed DEBUG\n", AVM_cnt);
		return 0;
	}
	FUNC9(&card->isac.dch.dev);
error_reg:
	FUNC12(card->addr, 32);
error:
	card->isac.release(&card->isac);
	FUNC6(&card->bch[1]);
	FUNC6(&card->bch[0]);
	FUNC18(&card_lock, flags);
	FUNC5(&card->list);
	FUNC19(&card_lock, flags);
	FUNC2(card);
	return err;
}