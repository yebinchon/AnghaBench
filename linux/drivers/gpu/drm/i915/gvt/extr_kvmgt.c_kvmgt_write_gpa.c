
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvmgt_rw_gpa (unsigned long,unsigned long,void*,unsigned long,int) ;

__attribute__((used)) static int kvmgt_write_gpa(unsigned long handle, unsigned long gpa,
   void *buf, unsigned long len)
{
 return kvmgt_rw_gpa(handle, gpa, buf, len, 1);
}
