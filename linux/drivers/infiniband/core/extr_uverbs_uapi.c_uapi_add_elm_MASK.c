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
typedef  scalar_t__ u32 ;
struct uverbs_api {int /*<<< orphan*/  radix; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOVERFLOW ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ UVERBS_API_KEY_ERR ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,void*) ; 

__attribute__((used)) static void *FUNC4(struct uverbs_api *uapi, u32 key, size_t alloc_size)
{
	void *elm;
	int rc;

	if (key == UVERBS_API_KEY_ERR)
		return FUNC0(-EOVERFLOW);

	elm = FUNC2(alloc_size, GFP_KERNEL);
	if (!elm)
		return FUNC0(-ENOMEM);
	rc = FUNC3(&uapi->radix, key, elm);
	if (rc) {
		FUNC1(elm);
		return FUNC0(rc);
	}

	return elm;
}