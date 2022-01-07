; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_dce110_opp_v_set_csc_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_csc_v.c_dce110_opp_v_set_csc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.out_csc_color_matrix = type { i32 }
%struct.transform = type { i32 }
%struct.default_adjustment = type { i32, i32, i32, i32, i32 }
%struct.dce_transform = type { i32 }

@CSC_COLOR_MODE_GRAPHICS_PREDEFINED = common dso_local global i32 0, align 4
@GRPH_COLOR_MATRIX_HW_DEFAULT = common dso_local global i32 0, align 4
@GRPH_COLOR_MATRIX_SW = common dso_local global i32 0, align 4
@global_color_matrix = common dso_local global %struct.out_csc_color_matrix* null, align 8
@CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce110_opp_v_set_csc_default(%struct.transform* %0, %struct.default_adjustment* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.default_adjustment*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.out_csc_color_matrix*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.default_adjustment* %1, %struct.default_adjustment** %4, align 8
  %10 = load %struct.transform*, %struct.transform** %3, align 8
  %11 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %10)
  store %struct.dce_transform* %11, %struct.dce_transform** %5, align 8
  %12 = load i32, i32* @CSC_COLOR_MODE_GRAPHICS_PREDEFINED, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %14 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load i32, i32* @GRPH_COLOR_MATRIX_HW_DEFAULT, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @GRPH_COLOR_MATRIX_SW, align 4
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %43, %17
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** @global_color_matrix, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.out_csc_color_matrix* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %20
  %26 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** @global_color_matrix, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %26, i64 %27
  store %struct.out_csc_color_matrix* %28, %struct.out_csc_color_matrix** %7, align 8
  %29 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %7, align 8
  %30 = getelementptr inbounds %struct.out_csc_color_matrix, %struct.out_csc_color_matrix* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %33 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %39 = load %struct.out_csc_color_matrix*, %struct.out_csc_color_matrix** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @program_color_matrix_v(%struct.dce_transform* %38, %struct.out_csc_color_matrix* %39, i32 %40)
  %42 = load i32, i32* @CSC_COLOR_MODE_GRAPHICS_OUTPUT_CSC, align 4
  store i32 %42, i32* %6, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %9, align 8
  br label %20

46:                                               ; preds = %37, %20
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.transform*, %struct.transform** %3, align 8
  %49 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %50 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @program_input_csc(%struct.transform* %48, i32 %51)
  %53 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %56 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %59 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @configure_graphics_mode_v(%struct.dce_transform* %53, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.transform*, %struct.transform** %3, align 8
  %63 = load %struct.default_adjustment*, %struct.default_adjustment** %4, align 8
  %64 = getelementptr inbounds %struct.default_adjustment, %struct.default_adjustment* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @set_Denormalization(%struct.transform* %62, i32 %65)
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.out_csc_color_matrix*) #1

declare dso_local i32 @program_color_matrix_v(%struct.dce_transform*, %struct.out_csc_color_matrix*, i32) #1

declare dso_local i32 @program_input_csc(%struct.transform*, i32) #1

declare dso_local i32 @configure_graphics_mode_v(%struct.dce_transform*, i32, i32, i32) #1

declare dso_local i32 @set_Denormalization(%struct.transform*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
