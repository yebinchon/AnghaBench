
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_sig_opts {scalar_t__ sig_size; int * sig; } ;


 int kfree (int *) ;

void verity_verify_sig_opts_cleanup(struct dm_verity_sig_opts *sig_opts)
{
 kfree(sig_opts->sig);
 sig_opts->sig = ((void*)0);
 sig_opts->sig_size = 0;
}
