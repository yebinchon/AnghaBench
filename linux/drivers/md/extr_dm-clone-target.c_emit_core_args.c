
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int hydration_batch_size; int hydration_threshold; } ;
typedef int ssize_t ;


 int DMEMIT (char*,unsigned int,int ,int ) ;
 int READ_ONCE (int ) ;

__attribute__((used)) static void emit_core_args(struct clone *clone, char *result,
      unsigned int maxlen, ssize_t *sz_ptr)
{
 ssize_t sz = *sz_ptr;
 unsigned int count = 4;

 DMEMIT("%u hydration_threshold %u hydration_batch_size %u ", count,
        READ_ONCE(clone->hydration_threshold),
        READ_ONCE(clone->hydration_batch_size));

 *sz_ptr = sz;
}
