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
struct blk_plug {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct bio* FUNC0 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC2 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 

__attribute__((used)) static void FUNC4(struct bio_list *bios)
{
	struct bio *bio;
	struct blk_plug plug;

	FUNC2(&plug);

	while ((bio = FUNC0(bios)))
		FUNC3(bio);

	FUNC1(&plug);
}