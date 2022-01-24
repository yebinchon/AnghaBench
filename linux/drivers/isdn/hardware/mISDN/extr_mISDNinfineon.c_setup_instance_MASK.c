#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_14__ {scalar_t__ Bprotocols; } ;
struct TYPE_11__ {TYPE_7__ dev; } ;
struct TYPE_12__ {TYPE_3__ dch; int /*<<< orphan*/ * hwlock; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* release ) (TYPE_5__*) ;TYPE_4__ isac; void* ctrl; int /*<<< orphan*/ * hwlock; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct inf_hw {int /*<<< orphan*/  list; TYPE_5__ ipac; int /*<<< orphan*/  name; TYPE_2__* pdev; int /*<<< orphan*/  lock; TYPE_1__* ci; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  Cards ; 
 scalar_t__ MISDN_MAX_IDLEN ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct inf_hw*) ; 
 int /*<<< orphan*/  card_lock ; 
 int inf_cnt ; 
 int /*<<< orphan*/  inf_ctrl ; 
 int FUNC1 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inf_hw*) ; 
 int FUNC9 (struct inf_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct inf_hw *card)
{
	int err;
	ulong flags;

	FUNC10(card->name, MISDN_MAX_IDLEN - 1, "%s.%d", card->ci->name,
		 inf_cnt + 1);
	FUNC13(&card_lock, flags);
	FUNC2(&card->list, &Cards);
	FUNC14(&card_lock, flags);

	FUNC0(card);
	card->ipac.isac.name = card->name;
	card->ipac.name = card->name;
	card->ipac.owner = THIS_MODULE;
	FUNC11(&card->lock);
	card->ipac.isac.hwlock = &card->lock;
	card->ipac.hwlock = &card->lock;
	card->ipac.ctrl = (void *)&inf_ctrl;

	err = FUNC9(card);
	if (err)
		goto error_setup;

	card->ipac.isac.dch.dev.Bprotocols =
		FUNC6(&card->ipac, card);

	if (card->ipac.isac.dch.dev.Bprotocols == 0)
		goto error_setup;

	err = FUNC4(&card->ipac.isac.dch.dev,
				    &card->pdev->dev, card->name);
	if (err)
		goto error;

	err = FUNC1(card);
	if (!err)  {
		inf_cnt++;
		FUNC7("Infineon %d cards installed\n", inf_cnt);
		return 0;
	}
	FUNC5(&card->ipac.isac.dch.dev);
error:
	card->ipac.release(&card->ipac);
error_setup:
	FUNC8(card);
	FUNC13(&card_lock, flags);
	FUNC3(&card->list);
	FUNC14(&card_lock, flags);
	return err;
}