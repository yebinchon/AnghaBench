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
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ app_size; scalar_t__ app_start_offset; } ;
struct ls_ucode_img {void* sig; int /*<<< orphan*/  sig_size; TYPE_1__ ucode_desc; int /*<<< orphan*/  ucode_size; void* ucode_data; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  f ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct nvkm_subdev const*,char*,int,int,struct firmware const**) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC6(const struct nvkm_subdev *subdev, const char *name,
			   int maxver, struct ls_ucode_img *img)
{
	const struct firmware *image, *desc, *sig;
	char f[64];
	int ver, ret;

	FUNC5(f, sizeof(f), "%s/image", name);
	ver = FUNC3(subdev, f, 0, maxver, &image);
	if (ver < 0)
		return ver;
	img->ucode_data = FUNC1(image->data, image->size, GFP_KERNEL);
	FUNC4(image);
	if (!img->ucode_data)
		return -ENOMEM;

	FUNC5(f, sizeof(f), "%s/desc", name);
	ret = FUNC3(subdev, f, ver, ver, &desc);
	if (ret < 0)
		return ret;
	FUNC2(&img->ucode_desc, desc->data, sizeof(img->ucode_desc));
	img->ucode_size = FUNC0(img->ucode_desc.app_start_offset + img->ucode_desc.app_size, 256);
	FUNC4(desc);

	FUNC5(f, sizeof(f), "%s/sig", name);
	ret = FUNC3(subdev, f, ver, ver, &sig);
	if (ret < 0)
		return ret;
	img->sig_size = sig->size;
	img->sig = FUNC1(sig->data, sig->size, GFP_KERNEL);
	FUNC4(sig);
	if (!img->sig)
		return -ENOMEM;

	return ver;
}