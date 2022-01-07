; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.device = type { i32 }

@amd_iommu_rlookup_table = common dso_local global %struct.amd_iommu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @amd_iommu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_iommu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call i32 @check_device(%struct.device* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @get_device_id(%struct.device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %25

15:                                               ; preds = %9
  %16 = load %struct.amd_iommu**, %struct.amd_iommu*** @amd_iommu_rlookup_table, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.amd_iommu*, %struct.amd_iommu** %16, i64 %18
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %19, align 8
  store %struct.amd_iommu* %20, %struct.amd_iommu** %3, align 8
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i32 @iommu_uninit_device(%struct.device* %21)
  %23 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %24 = call i32 @iommu_completion_wait(%struct.amd_iommu* %23)
  br label %25

25:                                               ; preds = %15, %14, %8
  ret void
}

declare dso_local i32 @check_device(%struct.device*) #1

declare dso_local i32 @get_device_id(%struct.device*) #1

declare dso_local i32 @iommu_uninit_device(%struct.device*) #1

declare dso_local i32 @iommu_completion_wait(%struct.amd_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
