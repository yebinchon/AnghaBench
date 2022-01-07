; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_display_gap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_program_display_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CG_DISPLAY_GAP_CNTL = common dso_local global i32 0, align 4
@DISP_GAP_MASK = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_VBLANK_OR_WM = common dso_local global i32 0, align 4
@R600_PM_DISPLAY_GAP_IGNORE = common dso_local global i32 0, align 4
@CG_DISPLAY_GAP_CNTL2 = common dso_local global i32 0, align 4
@SMU7_SoftRegisters = common dso_local global i32 0, align 4
@PreVBlankGap = common dso_local global i32 0, align 4
@VBlankTimeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @ci_program_display_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ci_program_display_gap(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %9 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %10 = call i32 @RREG32_SMC(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = call i32 @r600_dpm_get_vrefresh(%struct.radeon_device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = call i32 @r600_dpm_get_vblank_time(%struct.radeon_device* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @DISP_GAP_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* @R600_PM_DISPLAY_GAP_VBLANK_OR_WM, align 4
  %32 = call i32 @DISP_GAP(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %1
  %36 = load i32, i32* @R600_PM_DISPLAY_GAP_IGNORE, align 4
  %37 = call i32 @DISP_GAP(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @CG_DISPLAY_GAP_CNTL, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @WREG32_SMC(i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 60, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 500, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %7, align 4
  %53 = sdiv i32 1000000, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 200
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, 100
  %61 = mul nsw i32 %58, %60
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @CG_DISPLAY_GAP_CNTL2, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @WREG32_SMC(i32 %62, i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %66 = load i32, i32* @SMU7_SoftRegisters, align 4
  %67 = load i32, i32* @PreVBlankGap, align 4
  %68 = call i32 @offsetof(i32 %66, i32 %67)
  %69 = call i32 @ci_write_smc_soft_register(%struct.radeon_device* %65, i32 %68, i32 100)
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = load i32, i32* @SMU7_SoftRegisters, align 4
  %72 = load i32, i32* @VBlankTimeout, align 4
  %73 = call i32 @offsetof(i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @ci_write_smc_soft_register(%struct.radeon_device* %70, i32 %73, i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  %85 = zext i1 %84 to i32
  %86 = call i32 @ci_notify_smc_display_change(%struct.radeon_device* %78, i32 %85)
  ret void
}

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @r600_dpm_get_vrefresh(%struct.radeon_device*) #1

declare dso_local i32 @r600_dpm_get_vblank_time(%struct.radeon_device*) #1

declare dso_local i32 @DISP_GAP(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @ci_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @ci_notify_smc_display_change(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
