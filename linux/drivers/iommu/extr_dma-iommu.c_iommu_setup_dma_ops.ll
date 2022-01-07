; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_setup_dma_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_setup_dma_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.iommu_domain = type { i64 }

@IOMMU_DOMAIN_DMA = common dso_local global i64 0, align 8
@iommu_dma_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to set up IOMMU for device %s; retaining platform DMA ops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_setup_dma_ops(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %8)
  store %struct.iommu_domain* %9, %struct.iommu_domain** %7, align 8
  %10 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %11 = icmp ne %struct.iommu_domain* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %31

13:                                               ; preds = %3
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %15 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IOMMU_DOMAIN_DMA, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i64 @iommu_dma_init_domain(%struct.iommu_domain* %20, i32 %21, i32 %22, %struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  store i32* @iommu_dma_ops, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %13
  br label %35

31:                                               ; preds = %26, %12
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_name(%struct.device* %32)
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %30
  ret void
}

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i64 @iommu_dma_init_domain(%struct.iommu_domain*, i32, i32, %struct.device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
