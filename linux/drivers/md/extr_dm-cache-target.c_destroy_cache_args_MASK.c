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
struct cache_args {scalar_t__ origin_dev; int /*<<< orphan*/  ti; scalar_t__ cache_dev; scalar_t__ metadata_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_args*) ; 

__attribute__((used)) static void FUNC2(struct cache_args *ca)
{
	if (ca->metadata_dev)
		FUNC0(ca->ti, ca->metadata_dev);

	if (ca->cache_dev)
		FUNC0(ca->ti, ca->cache_dev);

	if (ca->origin_dev)
		FUNC0(ca->ti, ca->origin_dev);

	FUNC1(ca);
}