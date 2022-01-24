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
typedef  int u8 ;
struct isar_ch {int /*<<< orphan*/  conmsg; TYPE_1__* is; } ;
struct TYPE_2__ {int* buf; int /*<<< orphan*/  name; int /*<<< orphan*/  Flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAR_RATE_REQ ; 
 char** dmril ; 
 char** dmrim ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct isar_ch *ch) {
	u8 ril = ch->is->buf[0];
	u8 rim;

	if (!FUNC3(ISAR_RATE_REQ, &ch->is->Flags))
		return;
	if (ril > 14) {
		FUNC1("%s: wrong pstrsp ril=%d\n", ch->is->name, ril);
		ril = 15;
	}
	switch (ch->is->buf[1]) {
	case 0:
		rim = 0;
		break;
	case 0x20:
		rim = 2;
		break;
	case 0x40:
		rim = 3;
		break;
	case 0x41:
		rim = 4;
		break;
	case 0x51:
		rim = 5;
		break;
	case 0x61:
		rim = 6;
		break;
	case 0x71:
		rim = 7;
		break;
	case 0x82:
		rim = 8;
		break;
	case 0x92:
		rim = 9;
		break;
	case 0xa2:
		rim = 10;
		break;
	default:
		rim = 1;
		break;
	}
	FUNC2(ch->conmsg, "%s %s", dmril[ril], dmrim[rim]);
	FUNC0("%s: pump strsp %s\n", ch->is->name, ch->conmsg);
}