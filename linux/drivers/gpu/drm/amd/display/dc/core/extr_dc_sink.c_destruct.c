
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_sink {int * dc_container_id; } ;


 int kfree (int *) ;

__attribute__((used)) static void destruct(struct dc_sink *sink)
{
 if (sink->dc_container_id) {
  kfree(sink->dc_container_id);
  sink->dc_container_id = ((void*)0);
 }
}
