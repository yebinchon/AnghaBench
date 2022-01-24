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
typedef  int /*<<< orphan*/  u32 ;
struct capincci {int /*<<< orphan*/  list; struct capidev* cdev; int /*<<< orphan*/  ncci; } ;
struct capidev {int /*<<< orphan*/  nccis; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct capidev*,struct capincci*) ; 
 struct capincci* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct capincci *FUNC3(struct capidev *cdev, u32 ncci)
{
	struct capincci *np;

	np = FUNC1(sizeof(*np), GFP_KERNEL);
	if (!np)
		return NULL;
	np->ncci = ncci;
	np->cdev = cdev;

	FUNC0(cdev, np);

	FUNC2(&np->list, &cdev->nccis);

	return np;
}