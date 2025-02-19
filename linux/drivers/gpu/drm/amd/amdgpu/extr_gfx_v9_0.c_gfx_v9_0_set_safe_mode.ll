; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_safe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_set_safe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@RLC_SAFE_MODE__CMD_MASK = common dso_local global i32 0, align 4
@RLC_SAFE_MODE__MESSAGE__SHIFT = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmRLC_SAFE_MODE = common dso_local global i32 0, align 4
@RLC_SAFE_MODE = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_set_safe_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_set_safe_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @RLC_SAFE_MODE__CMD_MASK, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @RLC_SAFE_MODE__MESSAGE__SHIFT, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @GC, align 4
  %11 = load i32, i32* @mmRLC_SAFE_MODE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @WREG32_SOC15(i32 %10, i32 0, i32 %11, i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmRLC_SAFE_MODE, align 4
  %23 = call i32 @RREG32_SOC15(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* @RLC_SAFE_MODE, align 4
  %25 = load i32, i32* @CMD, align 4
  %26 = call i32 @REG_GET_FIELD(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %34

29:                                               ; preds = %20
  %30 = call i32 @udelay(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %28, %14
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
