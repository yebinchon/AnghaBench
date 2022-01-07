; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_gfx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_gfx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }

@AMDGPU_MAX_SDMA_INSTANCES = common dso_local global i32 0, align 4
@mmSDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_RB_CNTL = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@SDMA0_GFX_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @sdma_v4_0_gfx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_gfx_stop(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load i32, i32* @AMDGPU_MAX_SDMA_INSTANCES, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca %struct.amdgpu_ring*, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %76, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %13
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, i64 %30
  store %struct.amdgpu_ring* %28, %struct.amdgpu_ring** %31, align 8
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, i64 %37
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %38, align 8
  %40 = icmp eq %struct.amdgpu_ring* %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = call i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device* %45, i32 0)
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %41, %20
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @mmSDMA0_GFX_RB_CNTL, align 4
  %50 = call i32 @RREG32_SDMA(i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SDMA0_GFX_RB_CNTL, align 4
  %53 = load i32, i32* @RB_ENABLE, align 4
  %54 = call i32 @REG_SET_FIELD(i32 %51, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @mmSDMA0_GFX_RB_CNTL, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WREG32_SDMA(i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @mmSDMA0_GFX_IB_CNTL, align 4
  %61 = call i32 @RREG32_SDMA(i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @SDMA0_GFX_IB_CNTL, align 4
  %64 = load i32, i32* @IB_ENABLE, align 4
  %65 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @mmSDMA0_GFX_IB_CNTL, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @WREG32_SDMA(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, i64 %71
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %72, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %13

79:                                               ; preds = %13
  %80 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @amdgpu_ttm_set_buffer_funcs_status(%struct.amdgpu_device*, i32) #2

declare dso_local i32 @RREG32_SDMA(i32, i32) #2

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #2

declare dso_local i32 @WREG32_SDMA(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
