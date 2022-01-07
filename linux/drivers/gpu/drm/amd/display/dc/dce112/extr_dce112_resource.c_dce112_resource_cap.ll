; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_dce112_resource_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce112/extr_dce112_resource.c_dce112_resource_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_caps = type { i32 }
%struct.hw_asic_id = type { i32 }

@polaris_11_resource_cap = common dso_local global %struct.resource_caps zeroinitializer, align 4
@polaris_10_resource_cap = common dso_local global %struct.resource_caps zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_caps* @dce112_resource_cap(%struct.hw_asic_id* %0) #0 {
  %2 = alloca %struct.resource_caps*, align 8
  %3 = alloca %struct.hw_asic_id*, align 8
  store %struct.hw_asic_id* %0, %struct.hw_asic_id** %3, align 8
  %4 = load %struct.hw_asic_id*, %struct.hw_asic_id** %3, align 8
  %5 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @ASIC_REV_IS_POLARIS11_M(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.hw_asic_id*, %struct.hw_asic_id** %3, align 8
  %11 = getelementptr inbounds %struct.hw_asic_id, %struct.hw_asic_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ASIC_REV_IS_POLARIS12_V(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store %struct.resource_caps* @polaris_11_resource_cap, %struct.resource_caps** %2, align 8
  br label %17

16:                                               ; preds = %9
  store %struct.resource_caps* @polaris_10_resource_cap, %struct.resource_caps** %2, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load %struct.resource_caps*, %struct.resource_caps** %2, align 8
  ret %struct.resource_caps* %18
}

declare dso_local i64 @ASIC_REV_IS_POLARIS11_M(i32) #1

declare dso_local i64 @ASIC_REV_IS_POLARIS12_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
