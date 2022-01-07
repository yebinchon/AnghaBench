
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sham_dev {int dummy; } ;


 int omap_sham_write (struct omap_sham_dev*,int,int) ;

__attribute__((used)) static void omap_sham_write_n(struct omap_sham_dev *dd, u32 offset,
        u32 *value, int count)
{
 for (; count--; value++, offset += 4)
  omap_sham_write(dd, offset, *value);
}
