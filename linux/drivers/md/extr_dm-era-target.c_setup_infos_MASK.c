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
struct era_metadata {int /*<<< orphan*/  bitset_info; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct era_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct era_metadata*) ; 

__attribute__((used)) static void FUNC3(struct era_metadata *md)
{
	FUNC0(md->tm, &md->bitset_info);
	FUNC2(md);
	FUNC1(md);
}