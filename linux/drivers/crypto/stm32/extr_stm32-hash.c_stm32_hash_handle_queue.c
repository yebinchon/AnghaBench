
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_hash_dev {int engine; } ;
struct ahash_request {int dummy; } ;


 int crypto_transfer_hash_request_to_engine (int ,struct ahash_request*) ;

__attribute__((used)) static int stm32_hash_handle_queue(struct stm32_hash_dev *hdev,
       struct ahash_request *req)
{
 return crypto_transfer_hash_request_to_engine(hdev->engine, req);
}
