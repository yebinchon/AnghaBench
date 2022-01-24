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
struct TYPE_2__ {int /*<<< orphan*/  image_size; } ;
struct ls_ucode_img {TYPE_1__ ucode_desc; int /*<<< orphan*/  ucode_size; int /*<<< orphan*/  ucode_data; int /*<<< orphan*/  sig; int /*<<< orphan*/  sig_size; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  f ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*,struct firmware const*,struct firmware const*,TYPE_1__*) ; 
 int FUNC5 (struct nvkm_subdev const*,char*,struct firmware const**) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC8(const struct nvkm_subdev *subdev, int maxver,
		     struct ls_ucode_img *img, const char *falcon_name)
{
	const struct firmware *bl, *code, *data, *sig;
	char f[64];
	int ret;

	FUNC7(f, sizeof(f), "gr/%s_bl", falcon_name);
	ret = FUNC5(subdev, f, &bl);
	if (ret)
		goto error;

	FUNC7(f, sizeof(f), "gr/%s_inst", falcon_name);
	ret = FUNC5(subdev, f, &code);
	if (ret)
		goto free_bl;

	FUNC7(f, sizeof(f), "gr/%s_data", falcon_name);
	ret = FUNC5(subdev, f, &data);
	if (ret)
		goto free_inst;

	FUNC7(f, sizeof(f), "gr/%s_sig", falcon_name);
	ret = FUNC5(subdev, f, &sig);
	if (ret)
		goto free_data;

	img->sig = FUNC3(sig->data, sig->size, GFP_KERNEL);
	if (!img->sig) {
		ret = -ENOMEM;
		goto free_sig;
	}
	img->sig_size = sig->size;

	img->ucode_data = FUNC4(bl, code, data,
					     &img->ucode_desc);
	if (FUNC0(img->ucode_data)) {
		FUNC2(img->sig);
		ret = FUNC1(img->ucode_data);
		goto free_sig;
	}
	img->ucode_size = img->ucode_desc.image_size;

free_sig:
	FUNC6(sig);
free_data:
	FUNC6(data);
free_inst:
	FUNC6(code);
free_bl:
	FUNC6(bl);
error:
	return ret;
}