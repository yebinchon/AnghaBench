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
struct virtqueue {int dummy; } ;
struct virtio_gpu_vbuffer {int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 struct virtio_gpu_vbuffer* FUNC2 (struct virtqueue*,unsigned int*) ; 

__attribute__((used)) static void FUNC3(struct virtqueue *vq, struct list_head *reclaim_list)
{
	struct virtio_gpu_vbuffer *vbuf;
	unsigned int len;
	int freed = 0;

	while ((vbuf = FUNC2(vq, &len))) {
		FUNC1(&vbuf->list, reclaim_list);
		freed++;
	}
	if (freed == 0)
		FUNC0("Huh? zero vbufs reclaimed");
}