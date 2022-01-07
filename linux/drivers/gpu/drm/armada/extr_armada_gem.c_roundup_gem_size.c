
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 size_t roundup (size_t,int ) ;

__attribute__((used)) static size_t roundup_gem_size(size_t size)
{
 return roundup(size, PAGE_SIZE);
}
