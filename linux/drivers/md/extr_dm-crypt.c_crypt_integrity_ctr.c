
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct dm_target {char* error; int table; } ;
struct crypt_config {scalar_t__ on_disk_tag_size; scalar_t__ sector_size; scalar_t__ integrity_tag_size; scalar_t__ integrity_iv_size; TYPE_2__* dev; } ;
struct blk_integrity {scalar_t__ tag_size; scalar_t__ tuple_size; scalar_t__ interval_exp; TYPE_3__* profile; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {TYPE_1__* bdev; } ;
struct TYPE_4__ {int bd_disk; } ;


 int DMDEBUG (char*,int ,scalar_t__,...) ;
 int EINVAL ;
 int any_tfm_aead (struct crypt_config*) ;
 struct blk_integrity* blk_get_integrity (int ) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 scalar_t__ crypto_aead_setauthsize (int ,scalar_t__) ;
 int dm_device_name (struct mapped_device*) ;
 struct mapped_device* dm_table_get_md (int ) ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int crypt_integrity_ctr(struct crypt_config *cc, struct dm_target *ti)
{
 ti->error = "Integrity profile not supported.";
 return -EINVAL;

}
