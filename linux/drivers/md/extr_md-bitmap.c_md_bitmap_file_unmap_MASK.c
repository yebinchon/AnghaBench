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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
struct bitmap_storage {int file_pages; struct page** filemap_attr; struct page* sb_page; struct page** filemap; struct file* file; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 

__attribute__((used)) static void FUNC5(struct bitmap_storage *store)
{
	struct page **map, *sb_page;
	int pages;
	struct file *file;

	file = store->file;
	map = store->filemap;
	pages = store->file_pages;
	sb_page = store->sb_page;

	while (pages--)
		if (map[pages] != sb_page) /* 0 is sb_page, release it below */
			FUNC2(map[pages]);
	FUNC4(map);
	FUNC4(store->filemap_attr);

	if (sb_page)
		FUNC2(sb_page);

	if (file) {
		struct inode *inode = FUNC0(file);
		FUNC3(inode->i_mapping, 0, -1);
		FUNC1(file);
	}
}