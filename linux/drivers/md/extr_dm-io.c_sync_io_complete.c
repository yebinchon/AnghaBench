
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_io {unsigned long error_bits; int wait; } ;


 int complete (int *) ;

__attribute__((used)) static void sync_io_complete(unsigned long error, void *context)
{
 struct sync_io *sio = context;

 sio->error_bits = error;
 complete(&sio->wait);
}
