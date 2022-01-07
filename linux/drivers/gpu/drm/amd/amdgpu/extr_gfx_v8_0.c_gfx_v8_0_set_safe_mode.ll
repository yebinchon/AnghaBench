; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_safe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_safe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmRLC_CNTL = common dso_local global i32 0, align 4
@RLC_SAFE_MODE__CMD_MASK = common dso_local global i32 0, align 4
@RLC_SAFE_MODE__MESSAGE_MASK = common dso_local global i32 0, align 4
@RLC_SAFE_MODE__MESSAGE__SHIFT = common dso_local global i32 0, align 4
@mmRLC_SAFE_MODE = common dso_local global i32 0, align 4
@mmRLC_GPM_STAT = common dso_local global i32 0, align 4
@RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK = common dso_local global i32 0, align 4
@RLC_GPM_STAT__GFX_POWER_STATUS_MASK = common dso_local global i32 0, align 4
@RLC_SAFE_MODE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_set_safe_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_set_safe_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @mmRLC_CNTL, align 4
  %6 = call i32 @RREG32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RLC_SAFE_MODE__CMD_MASK, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @RLC_SAFE_MODE__MESSAGE_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @RLC_SAFE_MODE__MESSAGE__SHIFT, align 4
  %15 = shl i32 1, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @mmRLC_SAFE_MODE, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %41, %1
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i32, i32* @mmRLC_GPM_STAT, align 4
  %29 = call i32 @RREG32(i32 %28)
  %30 = load i32, i32* @RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK, align 4
  %31 = load i32, i32* @RLC_GPM_STAT__GFX_POWER_STATUS_MASK, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK, align 4
  %35 = load i32, i32* @RLC_GPM_STAT__GFX_POWER_STATUS_MASK, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %44

39:                                               ; preds = %27
  %40 = call i32 @udelay(i32 1)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %21

44:                                               ; preds = %38, %21
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load i32, i32* @mmRLC_SAFE_MODE, align 4
  %53 = call i32 @RREG32(i32 %52)
  %54 = load i32, i32* @RLC_SAFE_MODE, align 4
  %55 = load i32, i32* @CMD, align 4
  %56 = call i32 @REG_GET_FIELD(i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %64

59:                                               ; preds = %51
  %60 = call i32 @udelay(i32 1)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %45

64:                                               ; preds = %58, %45
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
