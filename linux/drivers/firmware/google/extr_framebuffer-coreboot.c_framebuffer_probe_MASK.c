#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct simplefb_platform_data {int height; int stride; int /*<<< orphan*/ * format; int /*<<< orphan*/  width; } ;
struct resource {int flags; char* name; scalar_t__ start; scalar_t__ end; } ;
struct platform_device {int dummy; } ;
struct lb_framebuffer {int y_resolution; int bytes_per_line; scalar_t__ bits_per_pixel; scalar_t__ red_mask_pos; scalar_t__ red_mask_size; scalar_t__ green_mask_pos; scalar_t__ green_mask_size; scalar_t__ blue_mask_pos; scalar_t__ blue_mask_size; scalar_t__ reserved_mask_pos; scalar_t__ reserved_mask_size; scalar_t__ physical_address; int /*<<< orphan*/  x_resolution; } ;
struct coreboot_device {int /*<<< orphan*/  dev; struct lb_framebuffer framebuffer; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  pdata ;
struct TYPE_10__ {scalar_t__ offset; scalar_t__ length; } ;
struct TYPE_9__ {scalar_t__ offset; scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ offset; scalar_t__ length; } ;
struct TYPE_7__ {scalar_t__ offset; scalar_t__ length; } ;
struct TYPE_11__ {scalar_t__ bits_per_pixel; int /*<<< orphan*/ * name; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int IORESOURCE_BUSY ; 
 int IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct platform_device*) ; 
 TYPE_5__* formats ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,struct resource*,int,struct simplefb_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct coreboot_device *dev)
{
	int i;
	u32 length;
	struct lb_framebuffer *fb = &dev->framebuffer;
	struct platform_device *pdev;
	struct resource res;
	struct simplefb_platform_data pdata = {
		.width = fb->x_resolution,
		.height = fb->y_resolution,
		.stride = fb->bytes_per_line,
		.format = NULL,
	};

	for (i = 0; i < FUNC0(formats); ++i) {
		if (fb->bits_per_pixel     == formats[i].bits_per_pixel &&
		    fb->red_mask_pos       == formats[i].red.offset &&
		    fb->red_mask_size      == formats[i].red.length &&
		    fb->green_mask_pos     == formats[i].green.offset &&
		    fb->green_mask_size    == formats[i].green.length &&
		    fb->blue_mask_pos      == formats[i].blue.offset &&
		    fb->blue_mask_size     == formats[i].blue.length &&
		    fb->reserved_mask_pos  == formats[i].transp.offset &&
		    fb->reserved_mask_size == formats[i].transp.length)
			pdata.format = formats[i].name;
	}
	if (!pdata.format)
		return -ENODEV;

	FUNC5(&res, 0, sizeof(res));
	res.flags = IORESOURCE_MEM | IORESOURCE_BUSY;
	res.name = "Coreboot Framebuffer";
	res.start = fb->physical_address;
	length = FUNC2(fb->y_resolution * fb->bytes_per_line);
	res.end = res.start + length - 1;
	if (res.end <= res.start)
		return -EINVAL;

	pdev = FUNC6(&dev->dev,
						 "simple-framebuffer", 0,
						 &res, 1, &pdata,
						 sizeof(pdata));
	if (FUNC1(pdev))
		FUNC7("coreboot: could not register framebuffer\n");
	else
		FUNC4(&dev->dev, pdev);

	return FUNC3(pdev);
}