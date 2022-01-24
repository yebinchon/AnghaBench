#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int l; int ApplId; int Messagenumber; int /*<<< orphan*/ * m; int /*<<< orphan*/  par; int /*<<< orphan*/  Subcommand; int /*<<< orphan*/  Command; scalar_t__ p; } ;
typedef  TYPE_1__ _cmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 

unsigned FUNC5(_cmsg *cmsg, u8 *msg)
{
	FUNC2(cmsg, 0, sizeof(_cmsg));
	cmsg->m = msg;
	cmsg->l = 8;
	cmsg->p = 0;
	FUNC0(cmsg->m + 4, &cmsg->Command);
	FUNC0(cmsg->m + 5, &cmsg->Subcommand);
	cmsg->par = FUNC1(cmsg->Command, cmsg->Subcommand);
	if (!cmsg->par)
		return 1;	/* invalid command/subcommand */

	FUNC3(cmsg);

	FUNC4(msg + 0, &cmsg->l);
	FUNC4(cmsg->m + 2, &cmsg->ApplId);
	FUNC4(cmsg->m + 6, &cmsg->Messagenumber);

	return 0;
}