; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_ocsc_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_ocsc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.dcn20_mpc = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.color_matrices_reg = type { i8*, i8*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CSC_MODE = common dso_local global i32* null, align 8
@MPC_OCSC_MODE = common dso_local global i32 0, align 4
@MPC_OUTPUT_CSC_DISABLE = common dso_local global i32 0, align 4
@MPC_OUTPUT_CSC_COEF_A = common dso_local global i32 0, align 4
@CSC_C11_C12_A = common dso_local global i32* null, align 8
@CSC_C33_C34_A = common dso_local global i32* null, align 8
@CSC_C11_C12_B = common dso_local global i32* null, align 8
@CSC_C33_C34_B = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_set_ocsc_default(%struct.mpc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_mpc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.color_matrices_reg, align 8
  %12 = alloca i32*, align 8
  store %struct.mpc* %0, %struct.mpc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mpc*, %struct.mpc** %5, align 8
  %14 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %13)
  store %struct.dcn20_mpc* %14, %struct.dcn20_mpc** %9, align 8
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** @CSC_MODE, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MPC_OCSC_MODE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @REG_SET(i32 %19, i32 0, i32 %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MPC_OUTPUT_CSC_DISABLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %103

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = call i32* @find_color_matrix(i32 %28, i32* %10)
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %103

34:                                               ; preds = %27
  %35 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %36 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %43 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %50 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %57 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MPC_OUTPUT_CSC_COEF_A, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %34
  %67 = load i32*, i32** @CSC_C11_C12_A, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @REG(i32 %71)
  %73 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 1
  store i8* %72, i8** %73, align 8
  %74 = load i32*, i32** @CSC_C33_C34_A, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @REG(i32 %78)
  %80 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  br label %96

81:                                               ; preds = %34
  %82 = load i32*, i32** @CSC_C11_C12_B, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @REG(i32 %86)
  %88 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** @CSC_C33_C34_B, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @REG(i32 %93)
  %95 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %11, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %81, %66
  %97 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %98 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @cm_helper_program_color_matrices(i32 %100, i32* %101, %struct.color_matrices_reg* %11)
  br label %103

103:                                              ; preds = %96, %32, %26
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32* @find_color_matrix(i32, i32*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_color_matrices(i32, i32*, %struct.color_matrices_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
