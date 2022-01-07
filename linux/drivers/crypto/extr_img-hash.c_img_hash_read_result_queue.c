
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct img_hash_dev {int dummy; } ;


 int CR_RESULT_QUEUE ;
 int be32_to_cpu (int ) ;
 int img_hash_read (struct img_hash_dev*,int ) ;

__attribute__((used)) static inline u32 img_hash_read_result_queue(struct img_hash_dev *hdev)
{
 return be32_to_cpu(img_hash_read(hdev, CR_RESULT_QUEUE));
}
