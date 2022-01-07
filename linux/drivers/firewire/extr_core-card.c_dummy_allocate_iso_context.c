
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iso_context {int dummy; } ;
struct fw_card {int dummy; } ;


 int ENODEV ;
 struct fw_iso_context* ERR_PTR (int ) ;

__attribute__((used)) static struct fw_iso_context *dummy_allocate_iso_context(struct fw_card *card,
    int type, int channel, size_t header_size)
{
 return ERR_PTR(-ENODEV);
}
