; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_set_priority_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_set_priority_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__*, %struct.amdgpu_device* }
%struct.TYPE_2__ = type { i64 }
%struct.amdgpu_device = type { i32 }

@DRM_SCHED_PRIORITY_HIGH_HW = common dso_local global i32 0, align 4
@AMDGPU_RING_TYPE_COMPUTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @gfx_v8_0_ring_set_priority_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_set_priority_compute(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_device* %9, %struct.amdgpu_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DRM_SCHED_PRIORITY_HIGH_HW, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AMDGPU_RING_TYPE_COMPUTE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @gfx_v8_0_hqd_set_priority(%struct.amdgpu_device* %23, %struct.amdgpu_ring* %24, i32 %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gfx_v8_0_pipe_reserve_resources(%struct.amdgpu_device* %27, %struct.amdgpu_ring* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @gfx_v8_0_hqd_set_priority(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32) #1

declare dso_local i32 @gfx_v8_0_pipe_reserve_resources(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
