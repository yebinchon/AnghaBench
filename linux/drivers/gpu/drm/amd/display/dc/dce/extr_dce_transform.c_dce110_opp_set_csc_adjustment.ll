; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce110_opp_set_csc_adjustment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce110_opp_set_csc_adjustment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.out_csc_color_matrix = type { i32 }
%struct.dce_transform = type { i32 }

@CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC = common dso_local global i32 0, align 4
@GRPH_COLOR_MATRIX_SW = common dso_local global i32 0, align 4
@GRAPHICS_CSC_ADJUST_TYPE_SW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_set_csc_adjustment(%struct.transform* %0, %struct.out_csc_color_matrix* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.out_csc_color_matrix*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.out_csc_color_matrix* %1, %struct.out_csc_color_matrix** %4, align 8
  %7 = load %struct.transform*, %struct.transform** %3, align 8
  %8 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %7)
  store %struct.dce_transform* %8, %struct.dce_transform** %5, align 8
  %9 = load i32, i32* @CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %11 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %4, align 8
  %12 = load i32, i32* @GRPH_COLOR_MATRIX_SW, align 4
  %13 = call i32 @program_color_matrix(%struct.dce_transform* %10, %struct.out_csc_color_matrix* %11, i32 %12)
  %14 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GRAPHICS_CSC_ADJUST_TYPE_SW, align 4
  %17 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %4, align 8
  %18 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @configure_graphics_mode(%struct.dce_transform* %14, i32 %15, i32 %16, i32 %19)
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @program_color_matrix(%struct.dce_transform*, %struct.out_csc_color_matrix*, i32) #1

declare dso_local i32 @configure_graphics_mode(%struct.dce_transform*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
