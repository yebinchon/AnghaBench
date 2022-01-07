
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIO_CONFIG_KEY_EXIT ;
 int outb (int ,int) ;
 int release_region (int,int) ;

__attribute__((used)) static inline void sch311x_sio_exit(int sio_config_port)
{
 outb(SIO_CONFIG_KEY_EXIT, sio_config_port);
 release_region(sio_config_port, 2);
}
