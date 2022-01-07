
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUSY ;
 int DONE ;
 int DVER ;
 int ENAB ;
 int FAIL ;
 int get_err (unsigned long*) ;
 int get_err_string (int ) ;
 int pr_debug (char*,unsigned long,int ,int ,int ,int ,int ,int ) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static void dump_status_reg(unsigned long *status)
{






}
