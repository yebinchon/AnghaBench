
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_config {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int etm4_set_default_config (struct etmv4_config*) ;
 int etm4_set_default_filter (struct etmv4_config*) ;

__attribute__((used)) static void etm4_set_default(struct etmv4_config *config)
{
 if (WARN_ON_ONCE(!config))
  return;
 etm4_set_default_config(config);
 etm4_set_default_filter(config);
}
