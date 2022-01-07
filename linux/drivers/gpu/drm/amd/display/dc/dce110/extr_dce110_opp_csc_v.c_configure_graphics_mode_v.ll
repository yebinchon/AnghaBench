; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_configure_graphics_mode_v.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_configure_graphics_mode_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }

@mmCOL_MAN_OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@COL_MAN_OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_CSC_MODE = common dso_local global i32 0, align 4
@GRAPHICS_CSC_ADJUST_TYPE_SW = common dso_local global i32 0, align 4
@CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC = common dso_local global i32 0, align 4
@GRAPHICS_CSC_ADJUST_TYPE_HW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_transform*, i32, i32, i32)* @configure_graphics_mode_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_graphics_mode_v(%struct.dce_transform* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dce_transform*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dce_transform*, %struct.dce_transform** %6, align 8
  %14 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.dc_context*, %struct.dc_context** %15, align 8
  store %struct.dc_context* %16, %struct.dc_context** %10, align 8
  %17 = load i32, i32* @mmCOL_MAN_OUTPUT_CSC_CONTROL, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @dm_read_reg(%struct.dc_context* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %23 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %24 = call i32 @set_reg_field_value(i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_SW, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %89

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %51 [
    i32 133, label %35
    i32 132, label %40
    i32 130, label %41
    i32 129, label %46
    i32 128, label %46
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %38 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %39 = call i32 @set_reg_field_value(i32 %36, i32 0, i32 %37, i32 %38)
  br label %52

40:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %89

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %44 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %45 = call i32 @set_reg_field_value(i32 %42, i32 2, i32 %43, i32 %44)
  br label %52

46:                                               ; preds = %33, %33
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %49 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %50 = call i32 @set_reg_field_value(i32 %47, i32 3, i32 %48, i32 %49)
  br label %52

51:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %89

52:                                               ; preds = %46, %41, %35
  br label %83

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_HW, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %75 [
    i32 133, label %59
    i32 132, label %64
    i32 131, label %65
    i32 130, label %65
    i32 129, label %70
    i32 128, label %70
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %62 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %63 = call i32 @set_reg_field_value(i32 %60, i32 0, i32 %61, i32 %62)
  br label %76

64:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %89

65:                                               ; preds = %57, %57
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %68 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %69 = call i32 @set_reg_field_value(i32 %66, i32 2, i32 %67, i32 %68)
  br label %76

70:                                               ; preds = %57, %57
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %73 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %74 = call i32 @set_reg_field_value(i32 %71, i32 3, i32 %72, i32 %73)
  br label %76

75:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %89

76:                                               ; preds = %70, %65, %59
  br label %82

77:                                               ; preds = %53
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @COL_MAN_OUTPUT_CSC_CONTROL, align 4
  %80 = load i32, i32* @OUTPUT_CSC_MODE, align 4
  %81 = call i32 @set_reg_field_value(i32 %78, i32 0, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %52
  %84 = load i32, i32* @mmCOL_MAN_OUTPUT_CSC_CONTROL, align 4
  store i32 %84, i32* %11, align 4
  %85 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @dm_write_reg(%struct.dc_context* %85, i32 %86, i32 %87)
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %75, %64, %51, %40, %32
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @dm_read_reg(%struct.dc_context*, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
