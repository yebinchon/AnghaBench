
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int ibdev; } ;
struct efa_admin_aenq_entry {int dummy; } ;


 int ibdev_err (int *,char*) ;

__attribute__((used)) static void unimplemented_aenq_handler(void *data,
           struct efa_admin_aenq_entry *aenq_e)
{
 struct efa_dev *dev = (struct efa_dev *)data;

 ibdev_err(&dev->ibdev,
    "Unknown event was received or event with unimplemented handler\n");
}
