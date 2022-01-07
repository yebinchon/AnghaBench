
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (unsigned long) ;

__attribute__((used)) static void ata_vlb_sync(unsigned long port)
{
 (void)inb(port);
 (void)inb(port);
 (void)inb(port);
}
