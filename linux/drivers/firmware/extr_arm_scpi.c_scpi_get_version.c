
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int protocol_version; } ;


 TYPE_1__* scpi_info ;

__attribute__((used)) static u32 scpi_get_version(void)
{
 return scpi_info->protocol_version;
}
