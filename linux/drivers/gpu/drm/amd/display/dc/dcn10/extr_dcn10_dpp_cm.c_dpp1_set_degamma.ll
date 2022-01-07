; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_set_degamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_set_degamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dcn10_dpp = type { i32 }

@CM_DGAM_CONTROL = common dso_local global i32 0, align 4
@CM_DGAM_LUT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_set_degamma(%struct.dpp* %0, i32 %1) #0 {
  %3 = alloca %struct.dpp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dpp*, %struct.dpp** %3, align 8
  %7 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %6)
  store %struct.dcn10_dpp* %7, %struct.dcn10_dpp** %5, align 8
  %8 = load %struct.dpp*, %struct.dpp** %3, align 8
  %9 = call i32 @dpp1_enable_cm_block(%struct.dpp* %8)
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %23 [
    i32 130, label %11
    i32 129, label %15
    i32 128, label %19
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @CM_DGAM_CONTROL, align 4
  %13 = load i32, i32* @CM_DGAM_LUT_MODE, align 4
  %14 = call i32 @REG_UPDATE(i32 %12, i32 %13, i32 0)
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @CM_DGAM_CONTROL, align 4
  %17 = load i32, i32* @CM_DGAM_LUT_MODE, align 4
  %18 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 1)
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @CM_DGAM_CONTROL, align 4
  %21 = load i32, i32* @CM_DGAM_LUT_MODE, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 2)
  br label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %25

25:                                               ; preds = %23, %19, %15, %11
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @dpp1_enable_cm_block(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
