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
struct bio {struct bio* bi_next; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ STRIPE_SECTORS ; 
 scalar_t__ FUNC0 (struct bio*) ; 

__attribute__((used)) static inline struct bio *FUNC1(struct bio *bio, sector_t sector)
{
	if (FUNC0(bio) < sector + STRIPE_SECTORS)
		return bio->bi_next;
	else
		return NULL;
}