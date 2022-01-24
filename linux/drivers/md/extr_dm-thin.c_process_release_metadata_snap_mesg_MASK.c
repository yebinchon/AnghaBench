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
struct pool {int /*<<< orphan*/  pmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned argc, char **argv, struct pool *pool)
{
	int r;

	r = FUNC1(argc, 1);
	if (r)
		return r;

	r = FUNC2(pool->pmd);
	if (r)
		FUNC0("release_metadata_snap message failed.");

	return r;
}