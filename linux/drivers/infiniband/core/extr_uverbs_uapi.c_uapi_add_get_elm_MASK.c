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
struct uverbs_api {int /*<<< orphan*/  radix; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct uverbs_api*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void *FUNC5(struct uverbs_api *uapi, u32 key,
			      size_t alloc_size, bool *exists)
{
	void *elm;

	elm = FUNC4(uapi, key, alloc_size);
	if (!FUNC1(elm)) {
		*exists = false;
		return elm;
	}

	if (elm != FUNC0(-EEXIST))
		return elm;

	elm = FUNC3(&uapi->radix, key);
	if (FUNC2(!elm))
		return FUNC0(-EINVAL);
	*exists = true;
	return elm;
}