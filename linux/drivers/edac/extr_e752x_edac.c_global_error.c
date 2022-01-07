
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int do_global_error (int,int ) ;

__attribute__((used)) static inline void global_error(int fatal, u32 errors, int *error_found,
    int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_global_error(fatal, errors);
}
