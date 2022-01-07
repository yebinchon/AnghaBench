; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_mg_clock_gating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_mg_clock_gating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_power_info = type { i64 }

@CHIP_RV770 = common dso_local global i64 0, align 8
@RV770_MGCGTTLOCAL0_DFLT = common dso_local global i32 0, align 4
@RV7XX_MGCGTTLOCAL0_DFLT = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_0 = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_1 = common dso_local global i32 0, align 4
@RV770_MGCGTTLOCAL1_DFLT = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@RV770_MGCGCGTSSMCTRL_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @rv770_mg_clock_gating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_mg_clock_gating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %7)
  store %struct.rv7xx_power_info* %8, %struct.rv7xx_power_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHIP_RV770, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @RV770_MGCGTTLOCAL0_DFLT, align 4
  store i32 %18, i32* %6, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @RV7XX_MGCGTTLOCAL0_DFLT, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @WREG32(i32 %22, i32 %23)
  %25 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %26 = load i32, i32* @RV770_MGCGTTLOCAL1_DFLT, align 4
  %27 = and i32 %26, -12289
  %28 = call i32 @WREG32(i32 %25, i32 %27)
  %29 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %30 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %35 = load i32, i32* @RV770_MGCGCGTSSMCTRL_DFLT, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %21
  br label %43

38:                                               ; preds = %2
  %39 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %40 = call i32 @WREG32(i32 %39, i32 -1)
  %41 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %42 = call i32 @WREG32(i32 %41, i32 -12289)
  br label %43

43:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
