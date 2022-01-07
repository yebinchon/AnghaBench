
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ _4GB ;
 scalar_t__ top_lm ;

__attribute__((used)) static u64 remove_mmio_gap(u64 sys)
{
 return (sys < _4GB) ? sys : sys - (_4GB - top_lm);
}
