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
typedef  int /*<<< orphan*/  dm_thin_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(unsigned argc, char **argv, struct pool *pool)
{
	dm_thin_id dev_id;
	int r;

	r = FUNC1(argc, 2);
	if (r)
		return r;

	r = FUNC3(argv[1], &dev_id, 1);
	if (r)
		return r;

	r = FUNC2(pool->pmd, dev_id);
	if (r)
		FUNC0("Deletion of thin device %s failed.", argv[1]);

	return r;
}