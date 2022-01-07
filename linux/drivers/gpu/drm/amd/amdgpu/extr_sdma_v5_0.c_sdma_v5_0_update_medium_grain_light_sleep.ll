; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_update_medium_grain_light_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_update_medium_grain_light_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_SUPPORT_SDMA_LS = common dso_local global i32 0, align 4
@mmSDMA0_POWER_CNTL = common dso_local global i32 0, align 4
@SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v5_0_update_medium_grain_light_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_update_medium_grain_light_sleep(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %67, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AMD_CG_SUPPORT_SDMA_LS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %29 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %26, i32 %27, i32 %28)
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %41 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %25
  br label %66

45:                                               ; preds = %18, %15
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %49 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %46, i32 %47, i32 %48)
  %50 = call i32 @RREG32(i32 %49)
  store i32 %50, i32* %5, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @SDMA0_POWER_CNTL__MEM_POWER_OVERRIDE_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %62 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %59, i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %45
  br label %66

66:                                               ; preds = %65, %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %8

70:                                               ; preds = %8
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
