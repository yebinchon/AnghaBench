; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_set_tiling_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_set_tiling_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i64 }

@AMDGPU_FAMILY_CZ = common dso_local global i64 0, align 8
@TILE_SPLIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_set_tiling_flags(%struct.amdgpu_bo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %10)
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AMDGPU_FAMILY_CZ, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TILE_SPLIT, align 4
  %20 = call i32 @AMDGPU_TILING_GET(i32 %18, i32 %19)
  %21 = icmp sgt i32 %20, 6
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %29

25:                                               ; preds = %17, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @AMDGPU_TILING_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
