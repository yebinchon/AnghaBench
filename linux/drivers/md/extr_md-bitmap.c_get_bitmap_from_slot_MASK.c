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
struct mddev {int dummy; } ;
struct bitmap {int dummy; } ;

/* Variables and functions */
 struct bitmap* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bitmap*) ; 
 int FUNC2 (struct bitmap*) ; 
 struct bitmap* FUNC3 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bitmap*) ; 
 int FUNC5 (struct bitmap*,int /*<<< orphan*/ ) ; 

struct bitmap *FUNC6(struct mddev *mddev, int slot)
{
	int rv = 0;
	struct bitmap *bitmap;

	bitmap = FUNC3(mddev, slot);
	if (FUNC1(bitmap)) {
		rv = FUNC2(bitmap);
		return FUNC0(rv);
	}

	rv = FUNC5(bitmap, 0);
	if (rv) {
		FUNC4(bitmap);
		return FUNC0(rv);
	}

	return bitmap;
}