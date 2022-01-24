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
struct urb_node {int /*<<< orphan*/  entry; struct urb* urb; int /*<<< orphan*/  release_urb_work; struct udl_device* dev; } ;
struct urb {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_2__ {size_t size; size_t count; scalar_t__ available; int /*<<< orphan*/  limit_sem; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct udl_device {TYPE_1__ urbs; int /*<<< orphan*/  udev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC3 (struct urb_node*) ; 
 struct urb_node* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct udl_device* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  udl_release_urb_work ; 
 int /*<<< orphan*/  udl_urb_completion ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,struct urb_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct drm_device *dev, int count, size_t size)
{
	struct udl_device *udl = FUNC8(dev);
	struct urb *urb;
	struct urb_node *unode;
	char *buf;
	size_t wanted_size = count * size;

	FUNC7(&udl->urbs.lock);

retry:
	udl->urbs.size = size;
	FUNC2(&udl->urbs.list);

	FUNC6(&udl->urbs.limit_sem, 0);
	udl->urbs.count = 0;
	udl->urbs.available = 0;

	while (udl->urbs.count * size < wanted_size) {
		unode = FUNC4(sizeof(struct urb_node), GFP_KERNEL);
		if (!unode)
			break;
		unode->dev = udl;

		FUNC1(&unode->release_urb_work,
			  udl_release_urb_work);

		urb = FUNC12(0, GFP_KERNEL);
		if (!urb) {
			FUNC3(unode);
			break;
		}
		unode->urb = urb;

		buf = FUNC11(udl->udev, size, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC3(unode);
			FUNC14(urb);
			if (size > PAGE_SIZE) {
				size /= 2;
				FUNC9(dev);
				goto retry;
			}
			break;
		}

		/* urb->transfer_buffer_length set to actual before submit */
		FUNC13(urb, udl->udev, FUNC15(udl->udev, 1),
			buf, size, udl_urb_completion, unode);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

		FUNC5(&unode->entry, &udl->urbs.list);

		FUNC10(&udl->urbs.limit_sem);
		udl->urbs.count++;
		udl->urbs.available++;
	}

	FUNC0("allocated %d %d byte urbs\n", udl->urbs.count, (int) size);

	return udl->urbs.count;
}