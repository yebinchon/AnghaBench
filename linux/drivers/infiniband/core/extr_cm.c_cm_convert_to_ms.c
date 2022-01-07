
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max (int,int ) ;

__attribute__((used)) static inline int cm_convert_to_ms(int iba_time)
{

 return 1 << max(iba_time - 8, 0);
}
