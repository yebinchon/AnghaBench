; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc20_program_ogam_pwl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc20_program_ogam_pwl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.pwl_result_data = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_mpc = type { i32 }

@MPCC_OGAM_LUT_DATA = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpc*, i32, %struct.pwl_result_data*, i64)* @mpc20_program_ogam_pwl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc20_program_ogam_pwl(%struct.mpc* %0, i32 %1, %struct.pwl_result_data* %2, i64 %3) #0 {
  %5 = alloca %struct.mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwl_result_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pwl_result_data* %2, %struct.pwl_result_data** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.mpc*, %struct.mpc** %5, align 8
  %12 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %11)
  store %struct.dcn20_mpc* %12, %struct.dcn20_mpc** %10, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %90, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %13
  %18 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %24 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %24, i64 %25
  %27 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @REG_SET(i32 %22, i32 0, i32* %23, i32 %28)
  %30 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %36 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %36, i64 %37
  %39 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_SET(i32 %34, i32 0, i32* %35, i32 %40)
  %42 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %48 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %48, i64 %49
  %51 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @REG_SET(i32 %46, i32 0, i32* %47, i32 %52)
  %54 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %60 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %60, i64 %61
  %63 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @REG_SET(i32 %58, i32 0, i32* %59, i32 %64)
  %66 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %72 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %72, i64 %73
  %75 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @REG_SET(i32 %70, i32 0, i32* %71, i32 %76)
  %78 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @MPCC_OGAM_LUT_DATA, align 8
  %84 = load %struct.pwl_result_data*, %struct.pwl_result_data** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %84, i64 %85
  %87 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @REG_SET(i32 %82, i32 0, i32* %83, i32 %88)
  br label %90

90:                                               ; preds = %17
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %13

93:                                               ; preds = %13
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
