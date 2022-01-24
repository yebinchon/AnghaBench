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
struct drm_buf_map {TYPE_1__* list; } ;
struct drm_buf {unsigned long offset; unsigned long idx; unsigned long total; } ;
typedef  int /*<<< orphan*/  address ;
struct TYPE_2__ {int /*<<< orphan*/  address; int /*<<< orphan*/  used; int /*<<< orphan*/  total; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned long*,int) ; 

__attribute__((used)) static int FUNC2(void *data, int idx, unsigned long virtual,
			struct drm_buf *buf)
{
	struct drm_buf_map *request = data;
	unsigned long address = virtual + buf->offset;	/* *** */

	if (FUNC1(&request->list[idx].idx, &buf->idx,
			 sizeof(request->list[0].idx)))
		return -EFAULT;
	if (FUNC1(&request->list[idx].total, &buf->total,
			 sizeof(request->list[0].total)))
		return -EFAULT;
	if (FUNC0(&request->list[idx].used, sizeof(int)))
		return -EFAULT;
	if (FUNC1(&request->list[idx].address, &address,
			 sizeof(address)))
		return -EFAULT;
	return 0;
}