; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_qcom_iommu.c_qcom_iommu_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.device = type { i32 }
%struct.iommu_fwspec = type { i32, i32* }
%struct.qcom_iommu_dev = type { i32 }
%struct.qcom_iommu_domain = type { i32* }
%struct.qcom_iommu_ctx = type { i32* }

@ARM_SMMU_CB_SCTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.device*)* @qcom_iommu_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_iommu_detach_dev(%struct.iommu_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iommu_fwspec*, align 8
  %6 = alloca %struct.qcom_iommu_dev*, align 8
  %7 = alloca %struct.qcom_iommu_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qcom_iommu_ctx*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %10)
  store %struct.iommu_fwspec* %11, %struct.iommu_fwspec** %5, align 8
  %12 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %5, align 8
  %13 = call %struct.qcom_iommu_dev* @to_iommu(%struct.iommu_fwspec* %12)
  store %struct.qcom_iommu_dev* %13, %struct.qcom_iommu_dev** %6, align 8
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %15 = call %struct.qcom_iommu_domain* @to_qcom_iommu_domain(%struct.iommu_domain* %14)
  store %struct.qcom_iommu_domain* %15, %struct.qcom_iommu_domain** %7, align 8
  %16 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %7, align 8
  %17 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %57

21:                                               ; preds = %2
  %22 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %6, align 8
  %23 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %47, %21
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %5, align 8
  %29 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %5, align 8
  %34 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %5, align 8
  %35 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec* %33, i32 %40)
  store %struct.qcom_iommu_ctx* %41, %struct.qcom_iommu_ctx** %9, align 8
  %42 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %9, align 8
  %43 = load i32, i32* @ARM_SMMU_CB_SCTLR, align 4
  %44 = call i32 @iommu_writel(%struct.qcom_iommu_ctx* %42, i32 %43, i32 0)
  %45 = load %struct.qcom_iommu_ctx*, %struct.qcom_iommu_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.qcom_iommu_ctx, %struct.qcom_iommu_ctx* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.qcom_iommu_dev*, %struct.qcom_iommu_dev** %6, align 8
  %52 = getelementptr inbounds %struct.qcom_iommu_dev, %struct.qcom_iommu_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_put_sync(i32 %53)
  %55 = load %struct.qcom_iommu_domain*, %struct.qcom_iommu_domain** %7, align 8
  %56 = getelementptr inbounds %struct.qcom_iommu_domain, %struct.qcom_iommu_domain* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %50, %20
  ret void
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.qcom_iommu_dev* @to_iommu(%struct.iommu_fwspec*) #1

declare dso_local %struct.qcom_iommu_domain* @to_qcom_iommu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.qcom_iommu_ctx* @to_ctx(%struct.iommu_fwspec*, i32) #1

declare dso_local i32 @iommu_writel(%struct.qcom_iommu_ctx*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
