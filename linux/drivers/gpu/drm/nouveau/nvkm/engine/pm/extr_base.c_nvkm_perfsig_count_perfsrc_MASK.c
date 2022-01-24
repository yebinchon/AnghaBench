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
typedef  size_t u8 ;
struct nvkm_perfsig {scalar_t__* source; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 

__attribute__((used)) static u8
FUNC1(struct nvkm_perfsig *sig)
{
	u8 source_nr = 0, i;

	for (i = 0; i < FUNC0(sig->source); i++) {
		if (sig->source[i])
			source_nr++;
	}
	return source_nr;
}