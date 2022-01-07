
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct etm_event_data {int path; } ;


 struct list_head** per_cpu_ptr (int ,int) ;

__attribute__((used)) static inline struct list_head **
etm_event_cpu_path_ptr(struct etm_event_data *data, int cpu)
{
 return per_cpu_ptr(data->path, cpu);
}
