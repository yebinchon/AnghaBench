
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int rdma_cm_port ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t srpt_rdma_cm_port_show(struct config_item *item, char *page)
{
 return sprintf(page, "%d\n", rdma_cm_port);
}
