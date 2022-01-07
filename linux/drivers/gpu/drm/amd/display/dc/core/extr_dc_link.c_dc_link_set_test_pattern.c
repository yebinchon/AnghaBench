
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_training_settings {int dummy; } ;
struct dc_link {int dummy; } ;
typedef enum dp_test_pattern { ____Placeholder_dp_test_pattern } dp_test_pattern ;


 int dc_link_dp_set_test_pattern (struct dc_link*,int,struct link_training_settings const*,unsigned char const*,unsigned int) ;

void dc_link_set_test_pattern(struct dc_link *link,
         enum dp_test_pattern test_pattern,
         const struct link_training_settings *p_link_settings,
         const unsigned char *p_custom_pattern,
         unsigned int cust_pattern_size)
{
 if (link != ((void*)0))
  dc_link_dp_set_test_pattern(
   link,
   test_pattern,
   p_link_settings,
   p_custom_pattern,
   cust_pattern_size);
}
