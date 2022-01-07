; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_get_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_get_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"wptr/doorbell before shift == 0x%016llx\0A\00", align 1
@mmSDMA0_GFX_RB_WPTR_HI = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_WPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"wptr before shift [%i] wptr == 0x%016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @sdma_v4_0_ring_get_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_v4_0_ring_get_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 3
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @READ_ONCE(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %45

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @mmSDMA0_GFX_RB_WPTR_HI, align 4
  %30 = call i32 @RREG32_SDMA(i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 32
  store i32 %32, i32* %4, align 4
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @mmSDMA0_GFX_RB_WPTR, align 4
  %37 = call i32 @RREG32_SDMA(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %25, %12
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 2
  ret i32 %47
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @RREG32_SDMA(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
