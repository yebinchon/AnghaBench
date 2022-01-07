
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COUGAR_KEY_G6 ;
 scalar_t__ KEY_F18 ;
 scalar_t__ KEY_SPACE ;
 scalar_t__** cougar_mapping ;
 scalar_t__ g6_is_space ;
 int pr_info (char*,char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static void cougar_fix_g6_mapping(void)
{
 int i;

 for (i = 0; cougar_mapping[i][0]; i++) {
  if (cougar_mapping[i][0] == COUGAR_KEY_G6) {
   cougar_mapping[i][1] =
    g6_is_space ? KEY_SPACE : KEY_F18;
   pr_info("cougar: G6 mapped to %s\n",
    g6_is_space ? "space" : "F18");
   return;
  }
 }
 pr_warn("cougar: no mappings defined for G6/spacebar");
}
