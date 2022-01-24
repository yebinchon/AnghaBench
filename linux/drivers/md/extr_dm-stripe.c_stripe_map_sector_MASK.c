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
typedef  int uint32_t ;
struct stripe_c {int chunk_size_shift; int chunk_size; int stripes_shift; int stripes; int /*<<< orphan*/  ti; } ;
typedef  int sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct stripe_c *sc, sector_t sector,
			      uint32_t *stripe, sector_t *result)
{
	sector_t chunk = FUNC0(sc->ti, sector);
	sector_t chunk_offset;

	if (sc->chunk_size_shift < 0)
		chunk_offset = FUNC1(chunk, sc->chunk_size);
	else {
		chunk_offset = chunk & (sc->chunk_size - 1);
		chunk >>= sc->chunk_size_shift;
	}

	if (sc->stripes_shift < 0)
		*stripe = FUNC1(chunk, sc->stripes);
	else {
		*stripe = chunk & (sc->stripes - 1);
		chunk >>= sc->stripes_shift;
	}

	if (sc->chunk_size_shift < 0)
		chunk *= sc->chunk_size;
	else
		chunk <<= sc->chunk_size_shift;

	*result = chunk + chunk_offset;
}