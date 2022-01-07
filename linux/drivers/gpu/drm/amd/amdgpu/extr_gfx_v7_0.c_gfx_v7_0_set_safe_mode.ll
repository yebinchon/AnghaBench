; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_set_safe_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_set_safe_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64 }

@mmRLC_GPR_REG2 = common dso_local global i32 0, align 4
@RLC_GPM_STAT__GFX_POWER_STATUS_MASK = common dso_local global i64 0, align 8
@RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK = common dso_local global i64 0, align 8
@mmRLC_GPM_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_set_safe_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_set_safe_mode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i64 3, i64* %3, align 8
  %6 = load i32, i32* @mmRLC_GPR_REG2, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @WREG32(i32 %6, i64 %7)
  %9 = load i64, i64* @RLC_GPM_STAT__GFX_POWER_STATUS_MASK, align 8
  %10 = load i64, i64* @RLC_GPM_STAT__GFX_CLOCK_STATUS_MASK, align 8
  %11 = or i64 %9, %10
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %29, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %12
  %19 = load i32, i32* @mmRLC_GPM_STAT, align 4
  %20 = call i32 @RREG32(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %5, align 8
  %23 = and i64 %21, %22
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = call i32 @udelay(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %12

32:                                               ; preds = %26, %12
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* @mmRLC_GPR_REG2, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %50

45:                                               ; preds = %39
  %46 = call i32 @udelay(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %33

50:                                               ; preds = %44, %33
  ret void
}

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
