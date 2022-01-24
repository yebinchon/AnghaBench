#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int l; int ApplId; int Messagenumber; int /*<<< orphan*/ * m; int /*<<< orphan*/  Subcommand; int /*<<< orphan*/  Command; int /*<<< orphan*/  par; scalar_t__ p; } ;
typedef  TYPE_1__ _cmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 

unsigned FUNC4(_cmsg *cmsg, u8 *msg)
{
	cmsg->m = msg;
	cmsg->l = 8;
	cmsg->p = 0;
	cmsg->par = FUNC1(cmsg->Command, cmsg->Subcommand);
	if (!cmsg->par)
		return 1;	/* invalid command/subcommand */

	FUNC2(cmsg);

	FUNC3(msg + 0, &cmsg->l);
	FUNC0(cmsg->m + 4, &cmsg->Command);
	FUNC0(cmsg->m + 5, &cmsg->Subcommand);
	FUNC3(cmsg->m + 2, &cmsg->ApplId);
	FUNC3(cmsg->m + 6, &cmsg->Messagenumber);

	return 0;
}