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
typedef  void* uint32_t ;
struct vector {struct dc_context* ctx; scalar_t__ count; void* struct_size; void* capacity; int /*<<< orphan*/ * container; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

bool FUNC2(
	struct vector *vector,
	struct dc_context *ctx,
	uint32_t capacity,
	uint32_t struct_size)
{
	vector->container = NULL;

	if (!struct_size || !capacity) {
		/* Container must be non-zero size*/
		FUNC0();
		return false;
	}

	vector->container = FUNC1(capacity, struct_size, GFP_KERNEL);
	if (vector->container == NULL)
		return false;
	vector->capacity = capacity;
	vector->struct_size = struct_size;
	vector->count = 0;
	vector->ctx = ctx;
	return true;
}