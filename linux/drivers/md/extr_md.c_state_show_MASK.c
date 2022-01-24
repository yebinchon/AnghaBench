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
struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {TYPE_1__ badblocks; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  ExternalBbl ; 
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Journal ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct md_rdev *rdev, char *page)
{
	char *sep = ",";
	size_t len = 0;
	unsigned long flags = FUNC0(rdev->flags);

	if (FUNC3(Faulty, &flags) ||
	    (!FUNC3(ExternalBbl, &flags) &&
	    rdev->badblocks.unacked_exist))
		len += FUNC1(page+len, "faulty%s", sep);
	if (FUNC3(In_sync, &flags))
		len += FUNC1(page+len, "in_sync%s", sep);
	if (FUNC3(Journal, &flags))
		len += FUNC1(page+len, "journal%s", sep);
	if (FUNC3(WriteMostly, &flags))
		len += FUNC1(page+len, "write_mostly%s", sep);
	if (FUNC3(Blocked, &flags) ||
	    (rdev->badblocks.unacked_exist
	     && !FUNC3(Faulty, &flags)))
		len += FUNC1(page+len, "blocked%s", sep);
	if (!FUNC3(Faulty, &flags) &&
	    !FUNC3(Journal, &flags) &&
	    !FUNC3(In_sync, &flags))
		len += FUNC1(page+len, "spare%s", sep);
	if (FUNC3(WriteErrorSeen, &flags))
		len += FUNC1(page+len, "write_error%s", sep);
	if (FUNC3(WantReplacement, &flags))
		len += FUNC1(page+len, "want_replacement%s", sep);
	if (FUNC3(Replacement, &flags))
		len += FUNC1(page+len, "replacement%s", sep);
	if (FUNC3(ExternalBbl, &flags))
		len += FUNC1(page+len, "external_bbl%s", sep);
	if (FUNC3(FailFast, &flags))
		len += FUNC1(page+len, "failfast%s", sep);

	if (len)
		len -= FUNC2(sep);

	return len+FUNC1(page+len, "\n");
}