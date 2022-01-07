
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nbpf_device {int dummy; } ;


 int NBPF_DSTAT_ER ;
 int nbpf_read (struct nbpf_device*,int ) ;

__attribute__((used)) static u32 nbpf_error_get(struct nbpf_device *nbpf)
{
 return nbpf_read(nbpf, NBPF_DSTAT_ER);
}
