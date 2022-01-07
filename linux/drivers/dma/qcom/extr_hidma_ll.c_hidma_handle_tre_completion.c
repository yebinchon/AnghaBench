
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {int evre_ring_size; int evre_processed_off; int* evre_ring; scalar_t__ evca; int dev; } ;


 scalar_t__ HIDMA_EVCA_DOORBELL_REG ;
 scalar_t__ HIDMA_EVCA_WRITE_PTR_REG ;
 size_t HIDMA_EVRE_CFG_IDX ;
 int HIDMA_EVRE_CODE_BIT_POS ;
 int HIDMA_EVRE_CODE_MASK ;
 int HIDMA_EVRE_ERRINFO_BIT_POS ;
 int HIDMA_EVRE_ERRINFO_MASK ;
 int HIDMA_EVRE_SIZE ;
 int HIDMA_INCREMENT_ITERATOR (int,int,int) ;
 int dev_err (int ,char*) ;
 int hidma_ll_isenabled (struct hidma_lldev*) ;
 scalar_t__ hidma_post_completed (struct hidma_lldev*,int,int) ;
 int readl_relaxed (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hidma_handle_tre_completion(struct hidma_lldev *lldev)
{
 u32 evre_ring_size = lldev->evre_ring_size;
 u32 err_info, err_code, evre_write_off;
 u32 evre_iterator;
 u32 num_completed = 0;

 evre_write_off = readl_relaxed(lldev->evca + HIDMA_EVCA_WRITE_PTR_REG);
 evre_iterator = lldev->evre_processed_off;

 if ((evre_write_off > evre_ring_size) ||
     (evre_write_off % HIDMA_EVRE_SIZE)) {
  dev_err(lldev->dev, "HW reports invalid EVRE write offset\n");
  return 0;
 }





 while ((evre_iterator != evre_write_off)) {
  u32 *current_evre = lldev->evre_ring + evre_iterator;
  u32 cfg;

  cfg = current_evre[HIDMA_EVRE_CFG_IDX];
  err_info = cfg >> HIDMA_EVRE_ERRINFO_BIT_POS;
  err_info &= HIDMA_EVRE_ERRINFO_MASK;
  err_code =
      (cfg >> HIDMA_EVRE_CODE_BIT_POS) & HIDMA_EVRE_CODE_MASK;

  if (hidma_post_completed(lldev, err_info, err_code))
   break;

  HIDMA_INCREMENT_ITERATOR(evre_iterator, HIDMA_EVRE_SIZE,
      evre_ring_size);






  evre_write_off =
      readl_relaxed(lldev->evca + HIDMA_EVCA_WRITE_PTR_REG);
  num_completed++;





  if (!hidma_ll_isenabled(lldev))
   break;
 }

 if (num_completed) {
  u32 evre_read_off = (lldev->evre_processed_off +
         HIDMA_EVRE_SIZE * num_completed);
  evre_read_off = evre_read_off % evre_ring_size;
  writel(evre_read_off, lldev->evca + HIDMA_EVCA_DOORBELL_REG);


  lldev->evre_processed_off = evre_read_off;
 }

 return num_completed;
}
