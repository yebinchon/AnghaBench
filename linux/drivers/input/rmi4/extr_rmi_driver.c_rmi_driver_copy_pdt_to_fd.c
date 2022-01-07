
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function_descriptor {int function_version; int interrupt_source_count; int function_number; scalar_t__ data_base_addr; scalar_t__ control_base_addr; scalar_t__ command_base_addr; scalar_t__ query_base_addr; } ;
struct pdt_entry {int function_version; int interrupt_source_count; int function_number; scalar_t__ page_start; scalar_t__ data_base_addr; scalar_t__ control_base_addr; scalar_t__ command_base_addr; scalar_t__ query_base_addr; } ;



__attribute__((used)) static void rmi_driver_copy_pdt_to_fd(const struct pdt_entry *pdt,
          struct rmi_function_descriptor *fd)
{
 fd->query_base_addr = pdt->query_base_addr + pdt->page_start;
 fd->command_base_addr = pdt->command_base_addr + pdt->page_start;
 fd->control_base_addr = pdt->control_base_addr + pdt->page_start;
 fd->data_base_addr = pdt->data_base_addr + pdt->page_start;
 fd->function_number = pdt->function_number;
 fd->interrupt_source_count = pdt->interrupt_source_count;
 fd->function_version = pdt->function_version;
}
