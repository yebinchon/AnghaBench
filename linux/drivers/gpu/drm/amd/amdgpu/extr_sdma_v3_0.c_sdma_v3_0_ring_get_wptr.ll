; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, %struct.amdgpu_device*, i64, i64 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @sdma_v3_0_ring_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v3_0_ring_get_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 2
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12, %1
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %19, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 2
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %12
  %31 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %32 = load i64*, i64** @sdma_offsets, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %31, %37
  %39 = call i32 @RREG32(i64 %38)
  %40 = ashr i32 %39, 2
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
