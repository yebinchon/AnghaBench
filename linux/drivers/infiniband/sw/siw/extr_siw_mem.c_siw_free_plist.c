
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_page_chunk {int plist; } ;


 int put_user_pages_dirty_lock (int ,int,int) ;

__attribute__((used)) static void siw_free_plist(struct siw_page_chunk *chunk, int num_pages,
      bool dirty)
{
 put_user_pages_dirty_lock(chunk->plist, num_pages, dirty);
}
