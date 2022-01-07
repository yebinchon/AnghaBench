
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdei_event {int dummy; } ;
struct sdei_crosscall_args {int first_error; } ;


 int CROSSCALL_INIT (struct sdei_crosscall_args,struct sdei_event*) ;
 int on_each_cpu (void*,struct sdei_crosscall_args*,int) ;

__attribute__((used)) static inline int sdei_do_cross_call(void *fn, struct sdei_event * event)
{
 struct sdei_crosscall_args arg;

 CROSSCALL_INIT(arg, event);
 on_each_cpu(fn, &arg, 1);

 return arg.first_error;
}
