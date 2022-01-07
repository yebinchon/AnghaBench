; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_init.c_iommu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@CONTROL_CMDBUF_EN = common dso_local global i32 0, align 4
@CONTROL_EVT_INT_EN = common dso_local global i32 0, align 4
@CONTROL_EVT_LOG_EN = common dso_local global i32 0, align 4
@CONTROL_GALOG_EN = common dso_local global i32 0, align 4
@CONTROL_GAINT_EN = common dso_local global i32 0, align 4
@CONTROL_IOMMU_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_disable(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %3 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %4 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %27

8:                                                ; preds = %1
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %10 = load i32, i32* @CONTROL_CMDBUF_EN, align 4
  %11 = call i32 @iommu_feature_disable(%struct.amd_iommu* %9, i32 %10)
  %12 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %13 = load i32, i32* @CONTROL_EVT_INT_EN, align 4
  %14 = call i32 @iommu_feature_disable(%struct.amd_iommu* %12, i32 %13)
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %16 = load i32, i32* @CONTROL_EVT_LOG_EN, align 4
  %17 = call i32 @iommu_feature_disable(%struct.amd_iommu* %15, i32 %16)
  %18 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %19 = load i32, i32* @CONTROL_GALOG_EN, align 4
  %20 = call i32 @iommu_feature_disable(%struct.amd_iommu* %18, i32 %19)
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %22 = load i32, i32* @CONTROL_GAINT_EN, align 4
  %23 = call i32 @iommu_feature_disable(%struct.amd_iommu* %21, i32 %22)
  %24 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %25 = load i32, i32* @CONTROL_IOMMU_EN, align 4
  %26 = call i32 @iommu_feature_disable(%struct.amd_iommu* %24, i32 %25)
  br label %27

27:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @iommu_feature_disable(%struct.amd_iommu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
