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
struct rxe_type_info {int flags; int /*<<< orphan*/  name; int /*<<< orphan*/  cache; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int RXE_NUM_TYPES ; 
 int /*<<< orphan*/  RXE_POOL_ALIGN ; 
 int /*<<< orphan*/  RXE_POOL_CACHE_FLAGS ; 
 int RXE_POOL_NO_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct rxe_type_info* rxe_type_info ; 

int FUNC4(void)
{
	int err;
	int i;
	size_t size;
	struct rxe_type_info *type;

	for (i = 0; i < RXE_NUM_TYPES; i++) {
		type = &rxe_type_info[i];
		size = FUNC0(type->size, RXE_POOL_ALIGN);
		if (!(type->flags & RXE_POOL_NO_ALLOC)) {
			type->cache =
				FUNC1(type->name, size,
						  RXE_POOL_ALIGN,
						  RXE_POOL_CACHE_FLAGS, NULL);
			if (!type->cache) {
				FUNC2("Unable to init kmem cache for %s\n",
				       type->name);
				err = -ENOMEM;
				goto err1;
			}
		}
	}

	return 0;

err1:
	FUNC3(i);

	return err;
}