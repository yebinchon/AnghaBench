
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BIT_ULL (int ) ;
 int config_enabled_bit (int ) ;

__attribute__((used)) static u64 config_enabled_mask(u64 config)
{
 return BIT_ULL(config_enabled_bit(config));
}
