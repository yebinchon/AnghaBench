#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ file; } ;
struct bitmap {TYPE_1__ storage; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_STALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*) ; 
 char* FUNC2 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct bitmap *bitmap)
{
	char *path, *ptr = NULL;

	if (!FUNC7(BITMAP_STALE, &bitmap->flags)) {
		FUNC5(bitmap);

		if (bitmap->storage.file) {
			path = FUNC4(PAGE_SIZE, GFP_KERNEL);
			if (path)
				ptr = FUNC2(bitmap->storage.file,
					     path, PAGE_SIZE);

			FUNC6("%s: kicking failed bitmap file %s from array!\n",
				FUNC1(bitmap), FUNC0(ptr) ? "" : ptr);

			FUNC3(path);
		} else
			FUNC6("%s: disabling internal bitmap due to errors\n",
				FUNC1(bitmap));
	}
}