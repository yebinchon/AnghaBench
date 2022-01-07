
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int find_closest (long,int ,int ) ;
 int lm85_range_map ;

__attribute__((used)) static int RANGE_TO_REG(long range)
{
 return find_closest(range, lm85_range_map, ARRAY_SIZE(lm85_range_map));
}
