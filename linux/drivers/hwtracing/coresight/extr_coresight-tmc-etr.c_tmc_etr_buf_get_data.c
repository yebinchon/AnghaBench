
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct etr_buf {size_t size; TYPE_1__* ops; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_data ) (struct etr_buf*,size_t,size_t,char**) ;} ;


 int stub1 (struct etr_buf*,size_t,size_t,char**) ;

__attribute__((used)) static ssize_t tmc_etr_buf_get_data(struct etr_buf *etr_buf,
        u64 offset, size_t len, char **bufpp)
{

 len = (len < (etr_buf->size - offset)) ? len : etr_buf->size - offset;

 return etr_buf->ops->get_data(etr_buf, (u64)offset, len, bufpp);
}
