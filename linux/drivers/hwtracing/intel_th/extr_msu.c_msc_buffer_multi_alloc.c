
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {int dummy; } ;


 int msc_buffer_multi_free (struct msc*) ;
 int msc_buffer_relink (struct msc*) ;
 int msc_buffer_win_alloc (struct msc*,unsigned long) ;

__attribute__((used)) static int msc_buffer_multi_alloc(struct msc *msc, unsigned long *nr_pages,
      unsigned int nr_wins)
{
 int ret, i;

 for (i = 0; i < nr_wins; i++) {
  ret = msc_buffer_win_alloc(msc, nr_pages[i]);
  if (ret) {
   msc_buffer_multi_free(msc);
   return ret;
  }
 }

 msc_buffer_relink(msc);

 return 0;
}
