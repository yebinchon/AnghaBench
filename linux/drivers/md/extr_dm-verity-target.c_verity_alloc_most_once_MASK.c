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
struct dm_verity {scalar_t__ data_blocks; int /*<<< orphan*/  validated_blocks; struct dm_target* ti; } ;
struct dm_target {char* error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int E2BIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dm_verity *v)
{
	struct dm_target *ti = v->ti;

	/* the bitset can only handle INT_MAX blocks */
	if (v->data_blocks > INT_MAX) {
		ti->error = "device too large to use check_at_most_once";
		return -E2BIG;
	}

	v->validated_blocks = FUNC1(FUNC0(v->data_blocks),
				       sizeof(unsigned long),
				       GFP_KERNEL);
	if (!v->validated_blocks) {
		ti->error = "failed to allocate bitset for check_at_most_once";
		return -ENOMEM;
	}

	return 0;
}