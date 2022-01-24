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
struct scatterlist {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static bool FUNC2(struct scatterlist *sg)
{
	while (sg) {
		if (!FUNC0(sg->length, AES_BLOCK_SIZE))
			return false;
		sg = FUNC1(sg);
	}

	return true;
}