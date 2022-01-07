
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct dm_crypt_io {int dummy; } ;
struct crypt_config {int req_pool; int per_bio_data_size; } ;
struct bio {int dummy; } ;


 struct dm_crypt_io* dm_per_bio_data (struct bio*,int ) ;
 int mempool_free (struct skcipher_request*,int *) ;

__attribute__((used)) static void crypt_free_req_skcipher(struct crypt_config *cc,
        struct skcipher_request *req, struct bio *base_bio)
{
 struct dm_crypt_io *io = dm_per_bio_data(base_bio, cc->per_bio_data_size);

 if ((struct skcipher_request *)(io + 1) != req)
  mempool_free(req, &cc->req_pool);
}
