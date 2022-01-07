
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYDRA_SDAT ;
 int pdregr (void*) ;

__attribute__((used)) static int hydra_bit_getsda(void *data)
{
 return (pdregr(data) & HYDRA_SDAT) != 0;
}
