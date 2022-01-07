; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_output_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_output_csc.c"
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
define dso_local void @mpc2_set_output_csc(%struct.mpc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_mpc*, align 8
  %10 = alloca %struct.color_matrices_reg, align 8
  store %struct.mpc* %0, %struct.mpc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mpc*, %struct.mpc** %5, align 8
  %12 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %11)
  store %struct.dcn20_mpc* %12, %struct.dcn20_mpc** %9, align 8
  %13 = load i32*, i32** @CSC_MODE, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MPC_OCSC_MODE, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @REG_SET(i32 %17, i32 0, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MPC_OUTPUT_CSC_DISABLE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %99

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %99

30:                                               ; preds = %25
  %31 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %32 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %39 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %46 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %53 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MPC_OUTPUT_CSC_COEF_A, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %30
  %63 = load i32*, i32** @CSC_C11_C12_A, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @REG(i32 %67)
  %69 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = load i32*, i32** @CSC_C33_C34_A, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @REG(i32 %74)
  %76 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  br label %92

77:                                               ; preds = %30
  %78 = load i32*, i32** @CSC_C11_C12_B, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @REG(i32 %82)
  %84 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = load i32*, i32** @CSC_C33_C34_B, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @REG(i32 %89)
  %91 = getelementptr inbounds %struct.color_matrices_reg, %struct.color_matrices_reg* %10, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %77, %62
  %93 = load %struct.dcn20_mpc*, %struct.dcn20_mpc** %9, align 8
  %94 = getelementptr inbounds %struct.dcn20_mpc, %struct.dcn20_mpc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @cm_helper_program_color_matrices(i32 %96, i32* %97, %struct.color_matrices_reg* %10)
  br label %99

99:                                               ; preds = %92, %28, %24
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i8* @REG(i32) #1

declare dso_local i32 @cm_helper_program_color_matrices(i32, i32*, %struct.color_matrices_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
