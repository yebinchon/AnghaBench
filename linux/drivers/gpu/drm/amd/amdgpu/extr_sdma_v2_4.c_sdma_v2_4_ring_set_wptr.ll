; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @sdma_v2_4_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 2
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %8 = load i64*, i64** @sdma_offsets, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %7, %13
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lower_32_bits(i32 %17)
  %19 = shl i32 %18, 2
  %20 = call i32 @WREG32(i64 %14, i32 %19)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
