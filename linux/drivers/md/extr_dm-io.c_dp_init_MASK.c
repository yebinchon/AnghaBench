#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dpages {unsigned long vma_invalidate_size; int /*<<< orphan*/ * vma_invalidate_address; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; int /*<<< orphan*/ * vma; int /*<<< orphan*/  bio; int /*<<< orphan*/  pl; } ;
struct TYPE_4__ {int type; TYPE_1__ ptr; int /*<<< orphan*/  offset; } ;
struct dm_io_request {TYPE_2__ mem; int /*<<< orphan*/  bi_op; } ;

/* Variables and functions */
#define  DM_IO_BIO 131 
#define  DM_IO_KMEM 130 
#define  DM_IO_PAGE_LIST 129 
#define  DM_IO_VMA 128 
 int EINVAL ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  FUNC0 (struct dpages*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct dpages*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpages*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpages*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dm_io_request *io_req, struct dpages *dp,
		   unsigned long size)
{
	/* Set up dpages based on memory type */

	dp->vma_invalidate_address = NULL;
	dp->vma_invalidate_size = 0;

	switch (io_req->mem.type) {
	case DM_IO_PAGE_LIST:
		FUNC3(dp, io_req->mem.ptr.pl, io_req->mem.offset);
		break;

	case DM_IO_BIO:
		FUNC0(dp, io_req->mem.ptr.bio);
		break;

	case DM_IO_VMA:
		FUNC1(io_req->mem.ptr.vma, size);
		if (io_req->bi_op == REQ_OP_READ) {
			dp->vma_invalidate_address = io_req->mem.ptr.vma;
			dp->vma_invalidate_size = size;
		}
		FUNC4(dp, io_req->mem.ptr.vma);
		break;

	case DM_IO_KMEM:
		FUNC2(dp, io_req->mem.ptr.addr);
		break;

	default:
		return -EINVAL;
	}

	return 0;
}