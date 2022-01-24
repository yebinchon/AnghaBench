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
typedef  scalar_t__ uint32_t ;
struct stripe_c {scalar_t__ chunk_size_shift; int chunk_size; } ;
typedef  int sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_c*,int,scalar_t__*,int*) ; 

__attribute__((used)) static void FUNC2(struct stripe_c *sc, sector_t sector,
				    uint32_t target_stripe, sector_t *result)
{
	uint32_t stripe;

	FUNC1(sc, sector, &stripe, result);
	if (stripe == target_stripe)
		return;

	/* round down */
	sector = *result;
	if (sc->chunk_size_shift < 0)
		*result -= FUNC0(sector, sc->chunk_size);
	else
		*result = sector & ~(sector_t)(sc->chunk_size - 1);

	if (target_stripe < stripe)
		*result += sc->chunk_size;		/* next chunk */
}