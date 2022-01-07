; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_enable_voltage_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_enable_voltage_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.igp_ps = type { i64, i64 }
%struct.igp_power_info = type { i32 }

@RS780_VDDC_LEVEL_HIGH = common dso_local global i64 0, align 8
@GFX_MACRO_BYPASS_CNTL = common dso_local global i32 0, align 4
@SPLL_BYPASS_CNTL = common dso_local global i32 0, align 4
@FVTHROT_PWM_FEEDBACK_DIV_REG1 = common dso_local global i32 0, align 4
@RANGE_PWM_FEEDBACK_DIV_EN = common dso_local global i32 0, align 4
@FVTHROT_PWM_CTRL_REG0 = common dso_local global i32 0, align 4
@FORCE_STARTING_PWM_HIGHTIME = common dso_local global i32 0, align 4
@STARTING_PWM_HIGHTIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @rs780_enable_voltage_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_enable_voltage_scaling(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.igp_ps*, align 8
  %6 = alloca %struct.igp_power_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %9 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %10 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %9)
  store %struct.igp_ps* %10, %struct.igp_ps** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %11)
  store %struct.igp_power_info* %12, %struct.igp_power_info** %6, align 8
  %13 = call i32 @udelay(i32 100)
  %14 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %15 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RS780_VDDC_LEVEL_HIGH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %21 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RS780_VDDC_LEVEL_HIGH, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %85

26:                                               ; preds = %19, %2
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %29 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @rs780_get_voltage_for_vddc_level(%struct.radeon_device* %27, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load %struct.igp_ps*, %struct.igp_ps** %5, align 8
  %34 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @rs780_get_voltage_for_vddc_level(%struct.radeon_device* %32, i64 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %38 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %39 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %37, i32 %38, i32 %40)
  %42 = call i32 @udelay(i32 1)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %26
  %47 = load i32, i32* @FVTHROT_PWM_FEEDBACK_DIV_REG1, align 4
  %48 = load i32, i32* @RANGE_PWM_FEEDBACK_DIV_EN, align 4
  %49 = load i32, i32* @RANGE_PWM_FEEDBACK_DIV_EN, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i32 %47, i32 %48, i32 %50)
  %52 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %53 = load i32, i32* @FORCE_STARTING_PWM_HIGHTIME, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @WREG32_P(i32 %52, i32 0, i32 %54)
  br label %80

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.igp_power_info*, %struct.igp_power_info** %6, align 8
  %62 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @STARTING_PWM_HIGHTIME(i32 %68)
  %70 = load i32, i32* @STARTING_PWM_HIGHTIME_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = call i32 @WREG32_P(i32 %67, i32 %69, i32 %71)
  %73 = load i32, i32* @FVTHROT_PWM_CTRL_REG0, align 4
  %74 = load i32, i32* @FORCE_STARTING_PWM_HIGHTIME, align 4
  %75 = load i32, i32* @FORCE_STARTING_PWM_HIGHTIME, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %73, i32 %74, i32 %76)
  br label %78

78:                                               ; preds = %66, %60
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i32, i32* @GFX_MACRO_BYPASS_CNTL, align 4
  %82 = load i32, i32* @SPLL_BYPASS_CNTL, align 4
  %83 = xor i32 %82, -1
  %84 = call i32 @WREG32_P(i32 %81, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %80, %25
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rs780_get_voltage_for_vddc_level(%struct.radeon_device*, i64) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @STARTING_PWM_HIGHTIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
