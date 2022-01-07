
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_host {int dummy; } ;
struct expansion_card {int dummy; } ;


 struct ide_host* ecard_get_drvdata (struct expansion_card*) ;
 int ecard_release_resources (struct expansion_card*) ;
 int ecard_set_drvdata (struct expansion_card*,int *) ;
 int ide_host_remove (struct ide_host*) ;

__attribute__((used)) static void rapide_remove(struct expansion_card *ec)
{
 struct ide_host *host = ecard_get_drvdata(ec);

 ecard_set_drvdata(ec, ((void*)0));

 ide_host_remove(host);

 ecard_release_resources(ec);
}
