#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_9__ {int /*<<< orphan*/  ctrl; } ;
struct TYPE_15__ {int Bprotocols; int /*<<< orphan*/  bchannels; int /*<<< orphan*/  channelmap; TYPE_1__ D; } ;
struct TYPE_12__ {TYPE_7__ dev; } ;
struct TYPE_14__ {TYPE_4__ dch; int /*<<< orphan*/ * hwlock; int /*<<< orphan*/  name; } ;
struct tiger_hw {int /*<<< orphan*/  name; TYPE_5__* pdev; TYPE_6__ isac; TYPE_3__* bc; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_10__ {int nr; int /*<<< orphan*/  list; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  send; } ;
struct TYPE_16__ {int nr; struct tiger_hw* hw; TYPE_2__ ch; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {TYPE_8__ bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cards ; 
 int ISDN_P_B_HDLC ; 
 int ISDN_P_B_MASK ; 
 int ISDN_P_B_RAW ; 
 int /*<<< orphan*/  MAX_DATA_MEM ; 
 scalar_t__ MISDN_MAX_IDLEN ; 
 int NJ_DMA_RXSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tiger_hw*) ; 
 int /*<<< orphan*/  card_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct tiger_hw*) ; 
 int /*<<< orphan*/  nj_bctrl ; 
 int nj_cnt ; 
 int /*<<< orphan*/  nj_dctrl ; 
 int FUNC6 (struct tiger_hw*) ; 
 int /*<<< orphan*/  nj_l2l1B ; 
 int /*<<< orphan*/  FUNC7 (struct tiger_hw*) ; 
 int FUNC8 (struct tiger_hw*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct tiger_hw *card)
{
	int i, err;
	u_long flags;

	FUNC11(card->name, MISDN_MAX_IDLEN - 1, "netjet.%d", nj_cnt + 1);
	FUNC13(&card_lock, flags);
	FUNC2(&card->list, &Cards);
	FUNC14(&card_lock, flags);

	FUNC0(card);
	card->isac.name = card->name;
	FUNC12(&card->lock);
	card->isac.hwlock = &card->lock;
	FUNC5(&card->isac, card);

	card->isac.dch.dev.Bprotocols = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
		(1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
	card->isac.dch.dev.D.ctrl = nj_dctrl;
	for (i = 0; i < 2; i++) {
		card->bc[i].bch.nr = i + 1;
		FUNC10(i + 1, card->isac.dch.dev.channelmap);
		FUNC3(&card->bc[i].bch, MAX_DATA_MEM,
				   NJ_DMA_RXSIZE >> 1);
		card->bc[i].bch.hw = card;
		card->bc[i].bch.ch.send = nj_l2l1B;
		card->bc[i].bch.ch.ctrl = nj_bctrl;
		card->bc[i].bch.ch.nr = i + 1;
		FUNC1(&card->bc[i].bch.ch.list,
			 &card->isac.dch.dev.bchannels);
		card->bc[i].bch.hw = card;
	}
	err = FUNC8(card);
	if (err)
		goto error;
	err = FUNC4(&card->isac.dch.dev, &card->pdev->dev,
				    card->name);
	if (err)
		goto error;
	err = FUNC6(card);
	if (!err)  {
		nj_cnt++;
		FUNC9("Netjet %d cards installed\n", nj_cnt);
		return 0;
	}
error:
	FUNC7(card);
	return err;
}