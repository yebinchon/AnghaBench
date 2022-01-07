
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int*) ;
 int WARN (int,char*,int) ;
 int* index_to_dp_signal_levels ;

__attribute__((used)) static u32 translate_signal_level(int signal_levels)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(index_to_dp_signal_levels); i++) {
  if (index_to_dp_signal_levels[i] == signal_levels)
   return i;
 }

 WARN(1, "Unsupported voltage swing/pre-emphasis level: 0x%x\n",
      signal_levels);

 return 0;
}
