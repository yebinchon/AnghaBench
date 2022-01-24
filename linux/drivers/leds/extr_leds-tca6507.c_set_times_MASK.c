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
struct tca6507_chip {TYPE_2__* bank; TYPE_1__* client; } ;
struct TYPE_4__ {int ontime; int offtime; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int INIT_CODE ; 
 int /*<<< orphan*/  TCA6507_FADE_OFF ; 
 int /*<<< orphan*/  TCA6507_FADE_ON ; 
 int /*<<< orphan*/  TCA6507_FIRST_OFF ; 
 int /*<<< orphan*/  TCA6507_FULL_ON ; 
 int /*<<< orphan*/  TCA6507_INITIALIZE ; 
 int /*<<< orphan*/  TCA6507_SECOND_OFF ; 
 int FUNC0 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tca6507_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * time_codes ; 

__attribute__((used)) static void FUNC3(struct tca6507_chip *tca, int bank)
{
	int c1, c2;
	int result;

	result = FUNC0(tca->bank[bank].ontime, &c1, &c2);
	if (result < 0)
		return;
	FUNC1(&tca->client->dev,
		"Chose on  times %d(%d) %d(%d) for %dms\n",
		c1, time_codes[c1],
		c2, time_codes[c2], tca->bank[bank].ontime);
	FUNC2(tca, TCA6507_FADE_ON, bank, c2);
	FUNC2(tca, TCA6507_FULL_ON, bank, c1);
	tca->bank[bank].ontime = result;

	result = FUNC0(tca->bank[bank].offtime, &c1, &c2);
	FUNC1(&tca->client->dev,
		"Chose off times %d(%d) %d(%d) for %dms\n",
		c1, time_codes[c1],
		c2, time_codes[c2], tca->bank[bank].offtime);
	FUNC2(tca, TCA6507_FADE_OFF, bank, c2);
	FUNC2(tca, TCA6507_FIRST_OFF, bank, c1);
	FUNC2(tca, TCA6507_SECOND_OFF, bank, c1);
	tca->bank[bank].offtime = result;

	FUNC2(tca, TCA6507_INITIALIZE, bank, INIT_CODE);
}