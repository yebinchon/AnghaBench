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
struct nvkm_subdev {int dummy; } ;
struct firmware {size_t size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev const*,char*,char const*,size_t) ; 
 int FUNC3 (struct nvkm_subdev const*,char const*,struct firmware const**) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 

void *
FUNC5(const struct nvkm_subdev *subdev, const char *name,
		       size_t min_size)
{
	const struct firmware *fw;
	void *blob;
	int ret;

	ret = FUNC3(subdev, name, &fw);
	if (ret)
		return FUNC0(ret);
	if (fw->size < min_size) {
		FUNC2(subdev, "%s is smaller than expected size %zu\n",
			   name, min_size);
		FUNC4(fw);
		return FUNC0(-EINVAL);
	}
	blob = FUNC1(fw->data, fw->size, GFP_KERNEL);
	FUNC4(fw);
	if (!blob)
		return FUNC0(-ENOMEM);

	return blob;
}