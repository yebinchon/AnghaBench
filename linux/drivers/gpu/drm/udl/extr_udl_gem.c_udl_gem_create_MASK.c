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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct udl_gem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct udl_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct udl_gem_object* FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct drm_file *file,
	       struct drm_device *dev,
	       uint64_t size,
	       uint32_t *handle_p)
{
	struct udl_gem_object *obj;
	int ret;
	u32 handle;

	size = FUNC4(size, PAGE_SIZE);

	obj = FUNC5(dev, size);
	if (obj == NULL)
		return -ENOMEM;

	ret = FUNC0(file, &obj->base, &handle);
	if (ret) {
		FUNC2(&obj->base);
		FUNC3(obj);
		return ret;
	}

	FUNC1(&obj->base);
	*handle_p = handle;
	return 0;
}