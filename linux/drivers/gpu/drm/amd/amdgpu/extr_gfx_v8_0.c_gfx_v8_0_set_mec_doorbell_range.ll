; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_mec_doorbell_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_mec_doorbell_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CHIP_TONGA = common dso_local global i64 0, align 8
@mmCP_MEC_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_MEC_DOORBELL_RANGE_UPPER = common dso_local global i32 0, align 4
@CP_PQ_STATUS = common dso_local global i32 0, align 4
@DOORBELL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_set_mec_doorbell_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_set_mec_doorbell_range(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CHIP_TONGA, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32, i32* @mmCP_MEC_DOORBELL_RANGE_LOWER, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 2
  %15 = call i32 @WREG32(i32 %9, i32 %14)
  %16 = load i32, i32* @mmCP_MEC_DOORBELL_RANGE_UPPER, align 4
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 2
  %22 = call i32 @WREG32(i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %8, %1
  %24 = load i32, i32* @CP_PQ_STATUS, align 4
  %25 = load i32, i32* @DOORBELL_ENABLE, align 4
  %26 = call i32 @WREG32_FIELD(i32 %24, i32 %25, i32 1)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
