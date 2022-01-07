; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_set_wptr_gfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_set_wptr_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v8_0_ring_set_wptr_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_set_wptr_gfx(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lower_32_bits(i32 %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @WDOORBELL32(i32 %26, i32 %30)
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = call i32 @WREG32(i32 %33, i32 %37)
  %39 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %40 = call i32 @RREG32(i32 %39)
  br label %41

41:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
