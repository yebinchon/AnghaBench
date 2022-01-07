; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_gfx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_sdma.c_cik_sdma_gfx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.amdgpu_ring* }

@mmSDMA0_GFX_RB_CNTL = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@SDMA0_GFX_RB_CNTL__RB_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @cik_sdma_gfx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_sdma_gfx_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.amdgpu_ring* %12, %struct.amdgpu_ring** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.amdgpu_ring* %18, %struct.amdgpu_ring** %4, align 8
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %21, align 8
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = icmp eq %struct.amdgpu_ring* %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %28, align 8
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %31 = icmp eq %struct.amdgpu_ring* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %1
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %33, i32 0)
  br label %35

35:                                               ; preds = %32, %25
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %73, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %36
  %44 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %45 = load i64*, i64** @sdma_offsets, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %44, %49
  %51 = call i32 @RREG32(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @SDMA0_GFX_RB_CNTL__RB_ENABLE_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %57 = load i64*, i64** @sdma_offsets, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WREG32(i64 %62, i32 %63)
  %65 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %66 = load i64*, i64** @sdma_offsets, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %65, %70
  %72 = call i32 @WREG32(i64 %71, i32 0)
  br label %73

73:                                               ; preds = %43
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  ret void
}

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
