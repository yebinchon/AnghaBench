#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int const mode; char const* param; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* _raid456_journal_mode ; 

__attribute__((used)) static const char *FUNC1(const int mode)
{
	int m = FUNC0(_raid456_journal_mode);

	while (m--)
		if (mode == _raid456_journal_mode[m].mode)
			return _raid456_journal_mode[m].param;

	return "unknown";
}