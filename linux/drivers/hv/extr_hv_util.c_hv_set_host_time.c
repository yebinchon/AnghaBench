
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct timespec64 {int dummy; } ;


 int do_settimeofday64 (struct timespec64*) ;
 struct timespec64 hv_get_adj_host_time () ;

__attribute__((used)) static void hv_set_host_time(struct work_struct *work)
{
 struct timespec64 ts = hv_get_adj_host_time();

 do_settimeofday64(&ts);
}
