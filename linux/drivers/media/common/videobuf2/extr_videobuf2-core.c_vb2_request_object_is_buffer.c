
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_request_object {int * ops; } ;


 int vb2_core_req_ops ;

bool vb2_request_object_is_buffer(struct media_request_object *obj)
{
 return obj->ops == &vb2_core_req_ops;
}
