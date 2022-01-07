
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ kstrtou32 (char*,int,int*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static uint32_t parse_clk(char *buf, bool min)
{
        char *ptr = buf;
        uint32_t clk = 0;

        do {
                ptr = strchr(ptr, ':');
                if (!ptr)
                        break;
                ptr+=2;
  if (kstrtou32(ptr, 10, &clk))
   return 0;
        } while (!min);

        return clk * 100;
}
