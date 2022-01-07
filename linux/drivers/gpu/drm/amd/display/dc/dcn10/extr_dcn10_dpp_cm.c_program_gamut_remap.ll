; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_program_gamut_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_program_gamut_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.color_matrices_reg = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GAMUT_REMAP_BYPASS = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C11_C12 = common dso_local global i32 0, align 4
@CM_GAMUT_REMAP_C33_C34 = common dso_local global i32 0, align 4
@CM_COMA_C11_C12 = common dso_local global i32 0, align 4
@CM_COMA_C33_C34 = common dso_local global i32 0, align 4
@CM_COMB_C11_C12 = common dso_local global i32 0, align 4
@CM_COMB_C33_C34 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, i32*, i32)* @program_gamut_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_gamut_remap(%struct.dcn10_dpp* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.dcn10_dpp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.color_matrices_reg, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GAMUT_REMAP_BYPASS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @CM_GAMUT_REMAP_CONTROL, align 4
  %17 = load i32, i32* @CM_GAMUT_REMAP_MODE, align 4
  %18 = call i32 @REG_SET(i32 %16, i32 0, i32 %17, i32 0)
  br label %104

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %24 [
    i32 130, label %21
    i32 129, label %22
    i32 128, label %23
  ]

21:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %25

22:                                               ; preds = %19
  store i32 2, i32* %7, align 4
  br label %25

23:                                               ; preds = %19
  store i32 3, i32* %7, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %23, %22, %21
  %26 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %27 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %34 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %41 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %48 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %56, label %69

56:                                               ; preds = %25
  %57 = load i32, i32* @CM_GAMUT_REMAP_C11_C12, align 4
  %58 = call i8* @REG(i32 %57)
  %59 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @CM_GAMUT_REMAP_C33_C34, align 4
  %61 = call i8* @REG(i32 %60)
  %62 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 0
  store i8* %61, i8** %62, align 8
  %63 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %64 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @cm_helper_program_color_matrices(i32 %66, i32* %67, %struct.color_matrices_reg* %8)
  br label %99

69:                                               ; preds = %25
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* @CM_COMA_C11_C12, align 4
  %74 = call i8* @REG(i32 %73)
  %75 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @CM_COMA_C33_C34, align 4
  %77 = call i8* @REG(i32 %76)
  %78 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 0
  store i8* %77, i8** %78, align 8
  %79 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %80 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @cm_helper_program_color_matrices(i32 %82, i32* %83, %struct.color_matrices_reg* %8)
  br label %98

85:                                               ; preds = %69
  %86 = load i32, i32* @CM_COMB_C11_C12, align 4
  %87 = call i8* @REG(i32 %86)
  %88 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i32, i32* @CM_COMB_C33_C34, align 4
  %90 = call i8* @REG(i32 %89)
  %91 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %8, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %4, align 8
  %93 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @cm_helper_program_color_matrices(i32 %95, i32* %96, %struct.color_matrices_reg* %8)
  br label %98

98:                                               ; preds = %85, %72
  br label %99

99:                                               ; preds = %98, %56
  %100 = load i32, i32* @CM_GAMUT_REMAP_CONTROL, align 4
  %101 = load i32, i32* @CM_GAMUT_REMAP_MODE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @REG_SET(i32 %100, i32 0, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %15
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_color_matrices(i32, i32*, %struct.color_matrices_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
