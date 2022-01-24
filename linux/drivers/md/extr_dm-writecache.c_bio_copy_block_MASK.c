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
struct dm_writecache {unsigned int block_size; } ;
struct bio_vec {unsigned int bv_len; } ;
struct bio {int /*<<< orphan*/  bi_status; int /*<<< orphan*/  bi_iter; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int READ ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,unsigned int) ; 
 int FUNC1 (struct bio*) ; 
 struct bio_vec FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 void* FUNC4 (struct bio_vec*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (void*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,unsigned int) ; 
 int FUNC8 (void*,void*,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_writecache*,int,char*,int) ; 

__attribute__((used)) static void FUNC11(struct dm_writecache *wc, struct bio *bio, void *data)
{
	void *buf;
	unsigned long flags;
	unsigned size;
	int rw = FUNC1(bio);
	unsigned remaining_size = wc->block_size;

	do {
		struct bio_vec bv = FUNC2(bio, bio->bi_iter);
		buf = FUNC4(&bv, &flags);
		size = bv.bv_len;
		if (FUNC9(size > remaining_size))
			size = remaining_size;

		if (rw == READ) {
			int r;
			r = FUNC8(buf, data, size);
			FUNC6(FUNC3(bio));
			if (FUNC9(r)) {
				FUNC10(wc, r, "hardware memory error when reading data: %d", r);
				bio->bi_status = BLK_STS_IOERR;
			}
		} else {
			FUNC6(FUNC3(bio));
			FUNC7(data, buf, size);
		}

		FUNC5(buf, &flags);

		data = (char *)data + size;
		remaining_size -= size;
		FUNC0(bio, size);
	} while (FUNC9(remaining_size));
}