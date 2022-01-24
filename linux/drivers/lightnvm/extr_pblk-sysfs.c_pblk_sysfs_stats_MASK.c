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
struct pblk {int /*<<< orphan*/  erase_failed; int /*<<< orphan*/  write_failed; int /*<<< orphan*/  read_failed_gc; int /*<<< orphan*/  read_empty; int /*<<< orphan*/  read_high_ecc; int /*<<< orphan*/  read_failed; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct pblk *pblk, char *page)
{
	ssize_t sz;

	sz = FUNC1(page, PAGE_SIZE,
			"read_failed=%lu, read_high_ecc=%lu, read_empty=%lu, read_failed_gc=%lu, write_failed=%lu, erase_failed=%lu\n",
			FUNC0(&pblk->read_failed),
			FUNC0(&pblk->read_high_ecc),
			FUNC0(&pblk->read_empty),
			FUNC0(&pblk->read_failed_gc),
			FUNC0(&pblk->write_failed),
			FUNC0(&pblk->erase_failed));

	return sz;
}