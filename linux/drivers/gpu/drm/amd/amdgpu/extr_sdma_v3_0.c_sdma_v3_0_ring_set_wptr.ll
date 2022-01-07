; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i64, i64, i32, i64, i32, i64, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@mmSDMA0_GFX_RB_WPTR = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @sdma_v3_0_ring_set_wptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_ring_set_wptr(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 6
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = shl i32 %27, 2
  %29 = call i32 @WRITE_ONCE(i32 %23, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = shl i32 %36, 2
  %38 = call i32 @WDOORBELL32(i32 %32, i32 %37)
  br label %77

39:                                               ; preds = %1
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = shl i32 %58, 2
  %60 = call i32 @WRITE_ONCE(i32 %54, i32 %59)
  br label %76

61:                                               ; preds = %39
  %62 = load i64, i64* @mmSDMA0_GFX_RB_WPTR, align 8
  %63 = load i64*, i64** @sdma_offsets, align 8
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %62, %68
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @lower_32_bits(i32 %72)
  %74 = shl i32 %73, 2
  %75 = call i32 @WREG32(i64 %69, i32 %74)
  br label %76

76:                                               ; preds = %61, %44
  br label %77

77:                                               ; preds = %76, %13
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
