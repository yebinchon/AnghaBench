
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_data {int dummy; } ;


 unsigned int ccp_queue_buf (struct ccp_data*,int ) ;

__attribute__((used)) static unsigned int ccp_fill_queue_buf(struct ccp_data *data)
{
 return ccp_queue_buf(data, 0);
}
