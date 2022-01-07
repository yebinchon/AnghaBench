
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int completion; } ;


 int complete (int *) ;

__attribute__((used)) static void gb_operation_sync_callback(struct gb_operation *operation)
{
 complete(&operation->completion);
}
