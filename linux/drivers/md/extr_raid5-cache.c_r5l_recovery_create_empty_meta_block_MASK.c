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
typedef  int /*<<< orphan*/  u64 ;
struct r5l_meta_block {void* position; void* seq; void* meta_size; int /*<<< orphan*/  version; void* magic; } ;
struct r5l_log {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int R5LOG_MAGIC ; 
 int /*<<< orphan*/  R5LOG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct r5l_meta_block*) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct r5l_meta_block* FUNC3 (struct page*) ; 

__attribute__((used)) static void
FUNC4(struct r5l_log *log,
				     struct page *page,
				     sector_t pos, u64 seq)
{
	struct r5l_meta_block *mb;

	mb = FUNC3(page);
	FUNC0(mb);
	mb->magic = FUNC1(R5LOG_MAGIC);
	mb->version = R5LOG_VERSION;
	mb->meta_size = FUNC1(sizeof(struct r5l_meta_block));
	mb->seq = FUNC2(seq);
	mb->position = FUNC2(pos);
}