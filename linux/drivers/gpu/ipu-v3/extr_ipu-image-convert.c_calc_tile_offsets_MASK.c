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
struct ipu_image_convert_image {TYPE_1__* fmt; } ;
struct ipu_image_convert_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ planar; } ;

/* Variables and functions */
 int FUNC0 (struct ipu_image_convert_ctx*,struct ipu_image_convert_image*) ; 
 int FUNC1 (struct ipu_image_convert_ctx*,struct ipu_image_convert_image*) ; 

__attribute__((used)) static int FUNC2(struct ipu_image_convert_ctx *ctx,
			      struct ipu_image_convert_image *image)
{
	if (image->fmt->planar)
		return FUNC1(ctx, image);

	return FUNC0(ctx, image);
}