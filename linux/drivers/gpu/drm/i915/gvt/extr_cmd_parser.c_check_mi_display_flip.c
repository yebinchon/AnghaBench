
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {int dummy; } ;
struct mi_display_flip_command_info {int dummy; } ;


 int gen8_check_mi_display_flip (struct parser_exec_state*,struct mi_display_flip_command_info*) ;

__attribute__((used)) static int check_mi_display_flip(struct parser_exec_state *s,
  struct mi_display_flip_command_info *info)
{
 return gen8_check_mi_display_flip(s, info);
}
