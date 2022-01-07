; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_set_dyn_expansion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_opp.c_dce110_opp_set_dyn_expansion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_pixel_processor = type { i32 }
%struct.dce110_opp = type { i32 }

@FMT_DYNAMIC_EXP_CNTL = common dso_local global i32 0, align 4
@FMT_DYNAMIC_EXP_EN = common dso_local global i32 0, align 4
@FMT_DYNAMIC_EXP_MODE = common dso_local global i32 0, align 4
@SIGNAL_TYPE_HDMI_TYPE_A = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT = common dso_local global i32 0, align 4
@SIGNAL_TYPE_DISPLAY_PORT_MST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_set_dyn_expansion(%struct.output_pixel_processor* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.output_pixel_processor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce110_opp*, align 8
  store %struct.output_pixel_processor* %0, %struct.output_pixel_processor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.output_pixel_processor*, %struct.output_pixel_processor** %5, align 8
  %11 = call %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor* %10)
  store %struct.dce110_opp* %11, %struct.dce110_opp** %9, align 8
  %12 = load i32, i32* @FMT_DYNAMIC_EXP_CNTL, align 4
  %13 = load i32, i32* @FMT_DYNAMIC_EXP_EN, align 4
  %14 = load i32, i32* @FMT_DYNAMIC_EXP_MODE, align 4
  %15 = call i32 @REG_UPDATE_2(i32 %12, i32 %13, i32 0, i32 %14, i32 0)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SIGNAL_TYPE_HDMI_TYPE_A, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SIGNAL_TYPE_DISPLAY_PORT_MST, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %23, %19, %4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %44 [
    i32 128, label %29
    i32 130, label %34
    i32 129, label %39
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @FMT_DYNAMIC_EXP_CNTL, align 4
  %31 = load i32, i32* @FMT_DYNAMIC_EXP_EN, align 4
  %32 = load i32, i32* @FMT_DYNAMIC_EXP_MODE, align 4
  %33 = call i32 @REG_UPDATE_2(i32 %30, i32 %31, i32 1, i32 %32, i32 1)
  br label %45

34:                                               ; preds = %27
  %35 = load i32, i32* @FMT_DYNAMIC_EXP_CNTL, align 4
  %36 = load i32, i32* @FMT_DYNAMIC_EXP_EN, align 4
  %37 = load i32, i32* @FMT_DYNAMIC_EXP_MODE, align 4
  %38 = call i32 @REG_UPDATE_2(i32 %35, i32 %36, i32 1, i32 %37, i32 0)
  br label %45

39:                                               ; preds = %27
  %40 = load i32, i32* @FMT_DYNAMIC_EXP_CNTL, align 4
  %41 = load i32, i32* @FMT_DYNAMIC_EXP_EN, align 4
  %42 = load i32, i32* @FMT_DYNAMIC_EXP_MODE, align 4
  %43 = call i32 @REG_UPDATE_2(i32 %40, i32 %41, i32 1, i32 %42, i32 0)
  br label %45

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %39, %34, %29
  br label %46

46:                                               ; preds = %45, %23
  ret void
}

declare dso_local %struct.dce110_opp* @TO_DCE110_OPP(%struct.output_pixel_processor*) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
