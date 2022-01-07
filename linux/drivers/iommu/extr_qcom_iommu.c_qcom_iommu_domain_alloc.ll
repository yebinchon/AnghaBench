; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.qcom_iommu_domain = type { %struct.iommu_domain, i32, i32 }

@IOMMU_DOMAIN_UNMANAGED = common dso_local global i32 0, align 4
@IOMMU_DOMAIN_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_domain* (i32)* @qcom_iommu_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_domain* @qcom_iommu_domain_alloc(i32 %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qcom_iommu_domain*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IOMMU_DOMAIN_UNMANAGED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %40

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.qcom_iommu_domain* @kzalloc(i32 12, i32 %14)
  store %struct.qcom_iommu_domain* %15, %struct.qcom_iommu_domain** %4, align 8
  %16 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %17 = icmp ne %struct.qcom_iommu_domain* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %40

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IOMMU_DOMAIN_DMA, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %25 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %24, i32 0, i32 0
  %26 = call i64 @iommu_get_dma_cookie(%struct.iommu_domain* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %30 = call i32 @kfree(%struct.qcom_iommu_domain* %29)
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %40

31:                                               ; preds = %23, %19
  %32 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %33 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %32, i32 0, i32 2
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %36 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %35, i32 0, i32 1
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %38, i32 0, i32 0
  store %struct.iommu_domain* %39, %struct.iommu_domain** %2, align 8
  br label %40

40:                                               ; preds = %31, %28, %18, %12
  %41 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %41
}

declare dso_local %struct.qcom_iommu_domain* @kzalloc(i32, i32) #1

declare dso_local i64 @iommu_get_dma_cookie(%struct.iommu_domain*) #1

declare dso_local i32 @kfree(%struct.qcom_iommu_domain*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
