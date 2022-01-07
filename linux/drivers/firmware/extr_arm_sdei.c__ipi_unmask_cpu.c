
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdei_unmask_local_cpu () ;

__attribute__((used)) static void _ipi_unmask_cpu(void *ignored)
{
 sdei_unmask_local_cpu();
}
