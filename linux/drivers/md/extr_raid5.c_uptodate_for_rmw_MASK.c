#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r5dev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_OrigPageUPTDODATE ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC1(struct r5dev *dev)
{
	return (FUNC0(R5_UPTODATE, &dev->flags)) &&
		(!FUNC0(R5_InJournal, &dev->flags) ||
		 FUNC0(R5_OrigPageUPTDODATE, &dev->flags));
}