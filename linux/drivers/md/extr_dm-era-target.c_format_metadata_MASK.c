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
struct era_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int FUNC0 (struct era_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct era_metadata*) ; 

__attribute__((used)) static int FUNC4(struct era_metadata *md)
{
	int r;

	r = FUNC0(md);
	if (r)
		return r;

	r = FUNC3(md);
	if (r) {
		FUNC1(md->sm);
		FUNC2(md->tm);
		return r;
	}

	return 0;
}