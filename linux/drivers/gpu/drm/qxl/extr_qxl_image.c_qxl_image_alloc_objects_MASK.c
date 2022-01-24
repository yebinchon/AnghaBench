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
struct qxl_release {int dummy; } ;
struct qxl_image {int dummy; } ;
struct qxl_drm_image {int /*<<< orphan*/  bo; int /*<<< orphan*/  chunk_list; } ;
struct qxl_device {int dummy; } ;
struct qxl_data_chunk {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_drm_image*) ; 
 struct qxl_drm_image* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct qxl_device*,struct qxl_release*,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qxl_device*,struct qxl_release*,struct qxl_drm_image*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct qxl_device *qdev,
			struct qxl_release *release,
			struct qxl_drm_image **image_ptr,
			int height, int stride)
{
	struct qxl_drm_image *image;
	int ret;

	image = FUNC2(sizeof(struct qxl_drm_image), GFP_KERNEL);
	if (!image)
		return -ENOMEM;

	FUNC0(&image->chunk_list);

	ret = FUNC3(qdev, release, sizeof(struct qxl_image), &image->bo);
	if (ret) {
		FUNC1(image);
		return ret;
	}

	ret = FUNC4(qdev, release, image, sizeof(struct qxl_data_chunk) + stride * height);
	if (ret) {
		FUNC5(&image->bo);
		FUNC1(image);
		return ret;
	}
	*image_ptr = image;
	return 0;
}