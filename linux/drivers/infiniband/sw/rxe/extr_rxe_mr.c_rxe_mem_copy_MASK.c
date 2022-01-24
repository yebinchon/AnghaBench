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
typedef  void u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rxe_phys_buf {size_t size; scalar_t__ addr; } ;
struct rxe_mem {scalar_t__ type; TYPE_2__* pd; struct rxe_map** map; } ;
struct rxe_map {struct rxe_phys_buf* buf; } ;
typedef  enum copy_direction { ____Placeholder_copy_direction } copy_direction ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {TYPE_1__ ibpd; } ;

/* Variables and functions */
 int EFAULT ; 
 int RXE_BUF_PER_MAP ; 
 scalar_t__ RXE_MEM_TYPE_DMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_mem*,scalar_t__,int*,int*,size_t*) ; 
 int FUNC2 (struct rxe_mem*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int to_mem_obj ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct rxe_mem *mem, u64 iova, void *addr, int length,
		 enum copy_direction dir, u32 *crcp)
{
	int			err;
	int			bytes;
	u8			*va;
	struct rxe_map		**map;
	struct rxe_phys_buf	*buf;
	int			m;
	int			i;
	size_t			offset;
	u32			crc = crcp ? (*crcp) : 0;

	if (length == 0)
		return 0;

	if (mem->type == RXE_MEM_TYPE_DMA) {
		u8 *src, *dest;

		src  = (dir == to_mem_obj) ?
			addr : ((void *)(uintptr_t)iova);

		dest = (dir == to_mem_obj) ?
			((void *)(uintptr_t)iova) : addr;

		FUNC3(dest, src, length);

		if (crcp)
			*crcp = FUNC4(FUNC5(mem->pd->ibpd.device),
					*crcp, dest, length);

		return 0;
	}

	FUNC0(!mem->map);

	err = FUNC2(mem, iova, length);
	if (err) {
		err = -EFAULT;
		goto err1;
	}

	FUNC1(mem, iova, &m, &i, &offset);

	map	= mem->map + m;
	buf	= map[0]->buf + i;

	while (length > 0) {
		u8 *src, *dest;

		va	= (u8 *)(uintptr_t)buf->addr + offset;
		src  = (dir == to_mem_obj) ? addr : va;
		dest = (dir == to_mem_obj) ? va : addr;

		bytes	= buf->size - offset;

		if (bytes > length)
			bytes = length;

		FUNC3(dest, src, bytes);

		if (crcp)
			crc = FUNC4(FUNC5(mem->pd->ibpd.device),
					crc, dest, bytes);

		length	-= bytes;
		addr	+= bytes;

		offset	= 0;
		buf++;
		i++;

		if (i == RXE_BUF_PER_MAP) {
			i = 0;
			map++;
			buf = map[0]->buf;
		}
	}

	if (crcp)
		*crcp = crc;

	return 0;

err1:
	return err;
}