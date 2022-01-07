
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msc {scalar_t__ mode; } ;


 scalar_t__ MSC_MODE_MULTI ;
 scalar_t__ MSC_MODE_SINGLE ;
 int msc_buffer_contig_free (struct msc*) ;
 int msc_buffer_multi_free (struct msc*) ;

__attribute__((used)) static void msc_buffer_free(struct msc *msc)
{
 if (msc->mode == MSC_MODE_SINGLE)
  msc_buffer_contig_free(msc);
 else if (msc->mode == MSC_MODE_MULTI)
  msc_buffer_multi_free(msc);
}
