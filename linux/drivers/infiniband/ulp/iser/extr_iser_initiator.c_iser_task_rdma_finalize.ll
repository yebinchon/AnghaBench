; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_task_rdma_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { i32*, i32*, i64*, i32 }

@ISER_DIR_IN = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ISER_DIR_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_task_rdma_finalize(%struct.iscsi_iser_task* %0) #0 {
  %2 = alloca %struct.iscsi_iser_task*, align 8
  %3 = alloca i32, align 4
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %2, align 8
  %4 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %5 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @scsi_prot_sg_count(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @ISER_DIR_IN, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %17 = load i64, i64* @ISER_DIR_IN, align 8
  %18 = call i32 @iser_unreg_rdma_mem(%struct.iscsi_iser_task* %16, i64 %17)
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %20 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @ISER_DIR_IN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %19, i32* %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %31 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %32 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @ISER_DIR_IN, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %30, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %15
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %41 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @ISER_DIR_OUT, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %39
  %48 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %49 = load i64, i64* @ISER_DIR_OUT, align 8
  %50 = call i32 @iser_unreg_rdma_mem(%struct.iscsi_iser_task* %48, i64 %49)
  %51 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %52 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %53 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @ISER_DIR_OUT, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %51, i32* %56, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %63 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %2, align 8
  %64 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @ISER_DIR_OUT, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task* %62, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %47
  br label %71

71:                                               ; preds = %70, %39
  ret void
}

declare dso_local i32 @scsi_prot_sg_count(i32) #1

declare dso_local i32 @iser_unreg_rdma_mem(%struct.iscsi_iser_task*, i64) #1

declare dso_local i32 @iser_dma_unmap_task_data(%struct.iscsi_iser_task*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
