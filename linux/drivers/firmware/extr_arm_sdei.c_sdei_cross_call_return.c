
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_crosscall_args {int first_error; int errors; } ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static inline void
sdei_cross_call_return(struct sdei_crosscall_args *arg, int err)
{
 if (err && (atomic_inc_return(&arg->errors) == 1))
  arg->first_error = err;
}
