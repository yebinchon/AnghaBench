
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_frequency {int dummy; } ;


 int ARRAY_SIZE (struct zpa2326_frequency const*) ;
 struct zpa2326_frequency const* zpa2326_sampling_frequencies ;

__attribute__((used)) static const struct zpa2326_frequency *zpa2326_highest_frequency(void)
{
 return &zpa2326_sampling_frequencies[
  ARRAY_SIZE(zpa2326_sampling_frequencies) - 1];
}
