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
struct omap_desc {unsigned int sglen; size_t es; int /*<<< orphan*/ * sg; } ;

/* Variables and functions */
 size_t* es_bytes ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC1(struct omap_desc *d)
{
	unsigned i;
	size_t size;

	for (size = i = 0; i < d->sglen; i++)
		size += FUNC0(&d->sg[i]);

	return size * es_bytes[d->es];
}