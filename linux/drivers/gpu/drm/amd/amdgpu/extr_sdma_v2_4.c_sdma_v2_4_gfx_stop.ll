; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_gfx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v2_4.c_sdma_v2_4_gfx_stop.c"
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
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i64 0, align 8
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @sdma_v2_4_gfx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v2_4_gfx_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.amdgpu_ring* %13, %struct.amdgpu_ring** %3, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.amdgpu_ring* %19, %struct.amdgpu_ring** %4, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %22, align 8
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %25 = icmp eq %struct.amdgpu_ring* %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %29, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %32 = icmp eq %struct.amdgpu_ring* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26, %1
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %35 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %34, i32 0)
  br label %36

36:                                               ; preds = %33, %26
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %87, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %44, label %90

44:                                               ; preds = %37
  %45 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %46 = load i64*, i64** @sdma_offsets, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = call i32 @RREG32(i64 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %55 = load i32, i32* @RB_ENABLE, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i64, i64* @mmSDMA0_GFX_RB_CNTL, align 8
  %58 = load i64*, i64** @sdma_offsets, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @WREG32(i64 %63, i32 %64)
  %66 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %67 = load i64*, i64** @sdma_offsets, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %66, %71
  %73 = call i32 @RREG32(i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %76 = load i32, i32* @IB_ENABLE, align 4
  %77 = call i32 @REG_SET_FIELD(i32 %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %6, align 4
  %78 = load i64, i64* @mmSDMA0_GFX_IB_CNTL, align 8
  %79 = load i64*, i64** @sdma_offsets, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %78, %83
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @WREG32(i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %44
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %37

90:                                               ; preds = %37
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 0, i32* %93, align 4
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  ret void
}

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
