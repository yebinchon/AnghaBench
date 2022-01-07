
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BITS_TO_LONGS (int ) ;
 int SH_KEYSC_MAXKEYS ;
 int dev_dbg (struct device*,char*,char const*,int,unsigned long) ;

__attribute__((used)) static void sh_keysc_map_dbg(struct device *dev, unsigned long *map,
        const char *str)
{
 int k;

 for (k = 0; k < BITS_TO_LONGS(SH_KEYSC_MAXKEYS); k++)
  dev_dbg(dev, "%s[%d] 0x%lx\n", str, k, map[k]);
}
