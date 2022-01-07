; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_device_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_free_device_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.iommu_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_state*)* @free_device_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_device_state(%struct.device_state* %0) #0 {
  %2 = alloca %struct.device_state*, align 8
  %3 = alloca %struct.iommu_group*, align 8
  store %struct.device_state* %0, %struct.device_state** %2, align 8
  %4 = load %struct.device_state*, %struct.device_state** %2, align 8
  %5 = getelementptr inbounds %struct.device_state, %struct.device_state* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call %struct.iommu_group* @iommu_group_get(i32* %7)
  store %struct.iommu_group* %8, %struct.iommu_group** %3, align 8
  %9 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %10 = icmp ne %struct.iommu_group* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.device_state*, %struct.device_state** %2, align 8
  %18 = getelementptr inbounds %struct.device_state, %struct.device_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %21 = call i32 @iommu_detach_group(i32 %19, %struct.iommu_group* %20)
  %22 = load %struct.iommu_group*, %struct.iommu_group** %3, align 8
  %23 = call i32 @iommu_group_put(%struct.iommu_group* %22)
  %24 = load %struct.device_state*, %struct.device_state** %2, align 8
  %25 = getelementptr inbounds %struct.device_state, %struct.device_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iommu_domain_free(i32 %26)
  %28 = load %struct.device_state*, %struct.device_state** %2, align 8
  %29 = call i32 @kfree(%struct.device_state* %28)
  br label %30

30:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.iommu_group* @iommu_group_get(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iommu_detach_group(i32, %struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_domain_free(i32) #1

declare dso_local i32 @kfree(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
