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
struct virtio_gpu_vbuffer {scalar_t__ resp_size; int /*<<< orphan*/  data_buf; int /*<<< orphan*/  resp_buf; } ;
struct virtio_gpu_device {int /*<<< orphan*/  vbufs; } ;

/* Variables and functions */
 scalar_t__ MAX_INLINE_RESP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct virtio_gpu_vbuffer*) ; 

__attribute__((used)) static void FUNC2(struct virtio_gpu_device *vgdev,
		      struct virtio_gpu_vbuffer *vbuf)
{
	if (vbuf->resp_size > MAX_INLINE_RESP_SIZE)
		FUNC0(vbuf->resp_buf);
	FUNC0(vbuf->data_buf);
	FUNC1(vgdev->vbufs, vbuf);
}