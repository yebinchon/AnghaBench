
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_io {int work; struct crypt_config* cc; } ;
struct crypt_config {int crypt_queue; } ;


 int INIT_WORK (int *,int ) ;
 int kcryptd_crypt ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void kcryptd_queue_crypt(struct dm_crypt_io *io)
{
 struct crypt_config *cc = io->cc;

 INIT_WORK(&io->work, kcryptd_crypt);
 queue_work(cc->crypt_queue, &io->work);
}
