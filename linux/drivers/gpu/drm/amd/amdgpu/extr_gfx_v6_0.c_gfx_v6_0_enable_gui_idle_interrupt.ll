; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_enable_gui_idle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_enable_gui_idle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmCP_INT_CNTL_RING0 = common dso_local global i32 0, align 4
@CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@mmDB_DEPTH_INFO = common dso_local global i32 0, align 4
@RLC_BUSY_STATUS = common dso_local global i32 0, align 4
@GFX_POWER_STATUS = common dso_local global i32 0, align 4
@GFX_CLOCK_STATUS = common dso_local global i32 0, align 4
@GFX_LS_STATUS = common dso_local global i32 0, align 4
@mmRLC_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gfx_v6_0_enable_gui_idle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %9 = call i32 @RREG32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK, align 4
  %14 = load i32, i32* @CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @CP_INT_CNTL__CNTX_BUSY_INT_ENABLE_MASK, align 4
  %20 = load i32, i32* @CP_INT_CNTL__CNTX_EMPTY_INT_ENABLE_MASK, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %12
  %26 = load i32, i32* @mmCP_INT_CNTL_RING0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @mmDB_DEPTH_INFO, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @RLC_BUSY_STATUS, align 4
  %35 = load i32, i32* @GFX_POWER_STATUS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @GFX_CLOCK_STATUS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @GFX_LS_STATUS, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %59, %31
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load i32, i32* @mmRLC_STAT, align 4
  %49 = call i32 @RREG32(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @GFX_CLOCK_STATUS, align 4
  %53 = load i32, i32* @GFX_POWER_STATUS, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %62

57:                                               ; preds = %47
  %58 = call i32 @udelay(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %41

62:                                               ; preds = %56, %41
  br label %63

63:                                               ; preds = %62, %25
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
