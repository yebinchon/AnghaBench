
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbpf_device {int dummy; } ;


 int NBPF_CTRL ;
 int NBPF_CTRL_LVINT ;
 int nbpf_write (struct nbpf_device*,int ,int ) ;

__attribute__((used)) static void nbpf_configure(struct nbpf_device *nbpf)
{
 nbpf_write(nbpf, NBPF_CTRL, NBPF_CTRL_LVINT);
}
