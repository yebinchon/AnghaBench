; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_shaper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_shaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_params = type { i32, i32 }
%struct.dcn20_dpp = type { i32 }

@CM_SHAPER_CONTROL = common dso_local global i32 0, align 4
@CM_SHAPER_LUT_MODE = common dso_local global i32 0, align 4
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp20_program_shaper(%struct.dpp* %0, %struct.pwl_params* %1) #0 {
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
  %14 = load i32, i32* @CM_SHAPER_CONTROL, align 4
  %15 = load i32, i32* @CM_SHAPER_LUT_MODE, align 4
  %16 = call i32 @REG_SET(i32 %14, i32 0, i32 %15, i32 0)
  store i32 0, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.dpp*, %struct.dpp** %4, align 8
  %19 = call i32 @dpp20_get_shaper_current(%struct.dpp* %18)
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
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @LUT_RAM_A, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = call i32 @dpp20_configure_shaper_lut(%struct.dpp* %32, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @LUT_RAM_A, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.dpp*, %struct.dpp** %4, align 8
  %44 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %45 = call i32 @dpp20_program_shaper_luta_settings(%struct.dpp* %43, %struct.pwl_params* %44)
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.dpp*, %struct.dpp** %4, align 8
  %48 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %49 = call i32 @dpp20_program_shaper_lutb_settings(%struct.dpp* %47, %struct.pwl_params* %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.dpp*, %struct.dpp** %4, align 8
  %52 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %53 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pwl_params*, %struct.pwl_params** %5, align 8
  %56 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dpp20_program_shaper_lut(%struct.dpp* %51, i32 %54, i32 %57)
  %59 = load i32, i32* @CM_SHAPER_CONTROL, align 4
  %60 = load i32, i32* @CM_SHAPER_LUT_MODE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @LUT_RAM_A, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 2
  %66 = call i32 @REG_SET(i32 %59, i32 0, i32 %60, i32 %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %50, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dpp20_get_shaper_current(%struct.dpp*) #1

declare dso_local i32 @dpp20_configure_shaper_lut(%struct.dpp*, i32) #1

declare dso_local i32 @dpp20_program_shaper_luta_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp20_program_shaper_lutb_settings(%struct.dpp*, %struct.pwl_params*) #1

declare dso_local i32 @dpp20_program_shaper_lut(%struct.dpp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
