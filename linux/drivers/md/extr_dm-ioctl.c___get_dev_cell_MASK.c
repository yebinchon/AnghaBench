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
typedef  int /*<<< orphan*/  uint64_t ;
struct mapped_device {int dummy; } ;
struct hash_cell {int dummy; } ;

/* Variables and functions */
 struct mapped_device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hash_cell* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hash_cell *FUNC4(uint64_t dev)
{
	struct mapped_device *md;
	struct hash_cell *hc;

	md = FUNC0(FUNC3(dev));
	if (!md)
		return NULL;

	hc = FUNC1(md);
	if (!hc) {
		FUNC2(md);
		return NULL;
	}

	return hc;
}