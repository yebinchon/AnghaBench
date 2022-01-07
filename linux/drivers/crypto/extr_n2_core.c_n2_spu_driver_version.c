
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,int ) ;
 int version ;

__attribute__((used)) static void n2_spu_driver_version(void)
{
 static int n2_spu_version_printed;

 if (n2_spu_version_printed++ == 0)
  pr_info("%s", version);
}
