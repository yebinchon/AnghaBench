
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iforce {TYPE_1__* xport_ops; } ;
struct TYPE_2__ {int (* get_id ) (struct iforce*,int ,int *,size_t*) ;} ;


 int stub1 (struct iforce*,int ,int *,size_t*) ;

__attribute__((used)) static inline int iforce_get_id_packet(struct iforce *iforce, u8 id,
           u8 *response_data, size_t *response_len)
{
 return iforce->xport_ops->get_id(iforce, id,
      response_data, response_len);
}
