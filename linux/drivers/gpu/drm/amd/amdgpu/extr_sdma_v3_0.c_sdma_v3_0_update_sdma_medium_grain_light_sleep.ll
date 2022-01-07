; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_update_sdma_medium_grain_light_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_update_sdma_medium_grain_light_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_SUPPORT_SDMA_LS = common dso_local global i32 0, align 4
@mmSDMA0_POWER_CNTL = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v3_0_update_sdma_medium_grain_light_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_update_sdma_medium_grain_light_sleep(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_CG_SUPPORT_SDMA_LS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = load i64, i64* @mmSDMA0_POWER_CNTL, align 8
  %27 = load i64*, i64** @sdma_offsets, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @RREG32(i64 %32)
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %25
  %41 = load i64, i64* @mmSDMA0_POWER_CNTL, align 8
  %42 = load i64*, i64** @sdma_offsets, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %41, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @WREG32(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %18
  br label %94

55:                                               ; preds = %10, %2
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %90, %55
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %56
  %64 = load i64, i64* @mmSDMA0_POWER_CNTL, align 8
  %65 = load i64*, i64** @sdma_offsets, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %64, %69
  %71 = call i32 @RREG32(i64 %70)
  store i32 %71, i32* %6, align 4
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %63
  %80 = load i64, i64* @mmSDMA0_POWER_CNTL, align 8
  %81 = load i64*, i64** @sdma_offsets, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @WREG32(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %79, %63
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %56

93:                                               ; preds = %56
  br label %94

94:                                               ; preds = %93, %54
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
