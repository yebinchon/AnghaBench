
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int do_nsi_error (int,int ) ;

__attribute__((used)) static inline void nsi_error(int fatal, u32 errors, int *error_found,
  int handle_error)
{
 *error_found = 1;

 if (handle_error)
  do_nsi_error(fatal, errors);
}
