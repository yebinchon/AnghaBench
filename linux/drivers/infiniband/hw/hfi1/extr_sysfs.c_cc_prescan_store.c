
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int cc_prescan; } ;
typedef size_t ssize_t ;


 int memcmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t cc_prescan_store(struct hfi1_pportdata *ppd, const char *buf,
    size_t count)
{
 if (!memcmp(buf, "on", 2))
  ppd->cc_prescan = 1;
 else if (!memcmp(buf, "off", 3))
  ppd->cc_prescan = 0;

 return count;
}
