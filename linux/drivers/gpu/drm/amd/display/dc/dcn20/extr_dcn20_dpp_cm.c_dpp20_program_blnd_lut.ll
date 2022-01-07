; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_blnd_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_blnd_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_params = type { i32, i32 }
%struct.dcn20_dpp = type { i32 }

@CM_BLNDGAM_CONTROL = common dso_local global i32 0, align 4
@CM_BLNDGAM_LUT_MODE = common dso_local global i32 0, align 4
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp20_program_blnd_lut(%struct.dpp* %0, %struct.pwl_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.pwl_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %5, align 8
  %9 = load %struct.dpp*, %struct.dpp** %4, align 8
  %10 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %9)
  store %struct.dcn20_dpp* %10, %struct.dcn20_dpp** %8, align 8
  %11 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %12 = icmp eq %struct.pwl_params* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @CM_BLNDGAM_CONTROL, align 4
  %15 = load i32, i32* @CM_BLNDGAM_LUT_MODE, align 4
  %16 = call i32 @REG_SET(i32 %14, i32 0, i32 %15, i32 0)
  store i32 0, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = load %struct.dpp*, %struct.dpp** %4, align 8
  %19 = call i32 @dpp20_get_blndgam_current(%struct.dpp* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @LUT_BYPASS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LUT_RAM_A, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %28, i32* %7, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load %struct.dpp*, %struct.dpp** %4, align 8
  %33 = call i32 @dpp20_power_on_blnd_lut(%struct.dpp* %32, i32 1)
  %34 = load %struct.dpp*, %struct.dpp** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @LUT_RAM_A, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = call i32 @dpp20_configure_blnd_lut(%struct.dpp* %34, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LUT_RAM_A, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = load %struct.dpp*, %struct.dpp** %4, align 8
  %46 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %47 = call i32 @dpp20_program_blnd_luta_settings(%struct.dpp* %45, %struct.pwl_params* %46)
  br label %52

48:                                               ; preds = %31
  %49 = load %struct.dpp*, %struct.dpp** %4, align 8
  %50 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %51 = call i32 @dpp20_program_blnd_lutb_settings(%struct.dpp* %49, %struct.pwl_params* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.dpp*, %struct.dpp** %4, align 8
  %54 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %55 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %58 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dpp20_program_blnd_pwl(%struct.dpp* %53, i32 %56, i32 %59)
  %61 = load i32, i32* @CM_BLNDGAM_CONTROL, align 4
  %62 = load i32, i32* @CM_BLNDGAM_LUT_MODE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LUT_RAM_A, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 2
  %68 = call i32 @REG_SET(i32 %61, i32 0, i32 %62, i32 %67)
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %52, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dpp20_get_blndgam_current(%struct.dpp*) #1

declare dso_local i32 @dpp20_power_on_blnd_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp20_configure_blnd_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp20_program_blnd_luta_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp20_program_blnd_lutb_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp20_program_blnd_pwl(%struct.dpp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
