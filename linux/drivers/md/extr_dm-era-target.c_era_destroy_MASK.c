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
struct era {scalar_t__ metadata_dev; int /*<<< orphan*/  ti; scalar_t__ origin_dev; scalar_t__ wq; scalar_t__ md; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct era*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct era *era)
{
	if (era->md)
		FUNC3(era->md);

	if (era->wq)
		FUNC0(era->wq);

	if (era->origin_dev)
		FUNC1(era->ti, era->origin_dev);

	if (era->metadata_dev)
		FUNC1(era->ti, era->metadata_dev);

	FUNC2(era);
}