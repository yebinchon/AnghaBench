
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int dummy; } ;


 int ocrdma_dispatch_port_error (struct ocrdma_dev*) ;
 int ocrdma_remove (struct ocrdma_dev*) ;

__attribute__((used)) static void ocrdma_shutdown(struct ocrdma_dev *dev)
{
 ocrdma_dispatch_port_error(dev);
 ocrdma_remove(dev);
}
