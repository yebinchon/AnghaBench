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
struct pblk {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct pblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct pblk *pblk, struct bio *bio)
{
	sector_t slba = FUNC0(bio);
	sector_t nr_secs = FUNC1(bio);

	FUNC2(pblk, slba, nr_secs);
}