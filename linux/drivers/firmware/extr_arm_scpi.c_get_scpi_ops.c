
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scpi_ops {int dummy; } ;
struct TYPE_2__ {struct scpi_ops* scpi_ops; } ;


 TYPE_1__* scpi_info ;

struct scpi_ops *get_scpi_ops(void)
{
 return scpi_info ? scpi_info->scpi_ops : ((void*)0);
}
