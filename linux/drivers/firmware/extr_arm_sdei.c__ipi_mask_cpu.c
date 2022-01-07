
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sdei_mask_local_cpu () ;

__attribute__((used)) static void _ipi_mask_cpu(void *ignored)
{
 sdei_mask_local_cpu();
}
