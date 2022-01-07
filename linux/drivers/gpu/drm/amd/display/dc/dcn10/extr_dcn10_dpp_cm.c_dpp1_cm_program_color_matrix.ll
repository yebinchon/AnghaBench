; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_program_color_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_cm_program_color_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_dpp = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.color_matrices_reg = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CM_TEST_DEBUG_INDEX = common dso_local global i32 0, align 4
@CM_TEST_DEBUG_DATA = common dso_local global i32 0, align 4
@CM_TEST_DEBUG_DATA_ID9_OCSC_MODE = common dso_local global i32 0, align 4
@CM_OCSC_C11_C12 = common dso_local global i32 0, align 4
@CM_OCSC_C33_C34 = common dso_local global i32 0, align 4
@CM_COMB_C11_C12 = common dso_local global i32 0, align 4
@CM_COMB_C33_C34 = common dso_local global i32 0, align 4
@CM_OCSC_CONTROL = common dso_local global i32 0, align 4
@CM_OCSC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_dpp*, i32*)* @dpp1_cm_program_color_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp1_cm_program_color_matrix(%struct.dcn10_dpp* %0, i32* %1) #0 {
  %3 = alloca %struct.dcn10_dpp*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.color_matrices_reg, align 8
  store %struct.dcn10_dpp* %0, %struct.dcn10_dpp** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %79

12:                                               ; preds = %2
  %13 = load i32, i32* @CM_TEST_DEBUG_INDEX, align 4
  %14 = load i32, i32* @CM_TEST_DEBUG_INDEX, align 4
  %15 = call i32 @REG_SET(i32 %13, i32 0, i32 %14, i32 9)
  %16 = load i32, i32* @CM_TEST_DEBUG_DATA, align 4
  %17 = load i32, i32* @CM_TEST_DEBUG_DATA_ID9_OCSC_MODE, align 4
  %18 = call i32 @REG_GET(i32 %16, i32 %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 4, i32* %5, align 4
  br label %23

22:                                               ; preds = %12
  store i32 5, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %25 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %24, i32 0, i32 2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %32 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %39 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %46 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %61

54:                                               ; preds = %23
  %55 = load i32, i32* @CM_OCSC_C11_C12, align 4
  %56 = call i8* @REG(i32 %55)
  %57 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @CM_OCSC_C33_C34, align 4
  %59 = call i8* @REG(i32 %58)
  %60 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 0
  store i8* %59, i8** %60, align 8
  br label %68

61:                                               ; preds = %23
  %62 = load i32, i32* @CM_COMB_C11_C12, align 4
  %63 = call i8* @REG(i32 %62)
  %64 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @CM_COMB_C33_C34, align 4
  %66 = call i8* @REG(i32 %65)
  %67 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %7, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %54
  %69 = load %struct.dcn10_dpp*, %struct.dcn10_dpp** %3, align 8
  %70 = getelementptr inbounds %struct.dcn10_dpp, %struct.dcn10_dpp* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @cm_helper_program_color_matrices(i32 %72, i32* %73, %struct.color_matrices_reg* %7)
  %75 = load i32, i32* @CM_OCSC_CONTROL, align 4
  %76 = load i32, i32* @CM_OCSC_MODE, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @REG_SET(i32 %75, i32 0, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %68, %10
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_color_matrices(i32, i32*, %struct.color_matrices_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
