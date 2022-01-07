; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_output_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_mpc.c_mpc2_set_output_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.pwl_params = type { i32, i32 }
%struct.dcn20_mpc = type { i32 }

@MPCC_OGAM_MODE = common dso_local global i32* null, align 8
@LUT_BYPASS = common dso_local global i32 0, align 4
@LUT_RAM_A = common dso_local global i32 0, align 4
@LUT_RAM_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc2_set_output_gamma(%struct.mpc* %0, i32 %1, %struct.pwl_params* %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwl_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn20_mpc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pwl_params* %2, %struct.pwl_params** %6, align 8
  %10 = load %struct.mpc*, %struct.mpc** %4, align 8
  %11 = call %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc* %10)
  store %struct.dcn20_mpc* %11, %struct.dcn20_mpc** %9, align 8
  %12 = load %struct.mpc*, %struct.mpc** %4, align 8
  %13 = getelementptr inbounds %struct.mpc, %struct.mpc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %28 = call i32 @REG_SET(i32 %26, i32 0, i32* %27, i32 0)
  br label %107

29:                                               ; preds = %3
  %30 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %31 = icmp eq %struct.pwl_params* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %39 = call i32 @REG_SET(i32 %37, i32 0, i32* %38, i32 0)
  br label %107

40:                                               ; preds = %29
  %41 = load %struct.mpc*, %struct.mpc** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mpc20_get_ogam_current(%struct.mpc* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @LUT_BYPASS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @LUT_RAM_A, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %40
  %52 = load i32, i32* @LUT_RAM_B, align 4
  store i32 %52, i32* %8, align 4
  br label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @LUT_RAM_A, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load %struct.mpc*, %struct.mpc** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mpc20_power_on_ogam_lut(%struct.mpc* %56, i32 %57, i32 1)
  %59 = load %struct.mpc*, %struct.mpc** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @LUT_RAM_A, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = call i32 @mpc20_configure_ogam_lut(%struct.mpc* %59, i32 %60, i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @LUT_RAM_A, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load %struct.mpc*, %struct.mpc** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %74 = call i32 @mpc2_program_luta(%struct.mpc* %71, i32 %72, %struct.pwl_params* %73)
  br label %80

75:                                               ; preds = %55
  %76 = load %struct.mpc*, %struct.mpc** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %79 = call i32 @mpc2_program_lutb(%struct.mpc* %76, i32 %77, %struct.pwl_params* %78)
  br label %80

80:                                               ; preds = %75, %70
  %81 = load %struct.mpc*, %struct.mpc** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @apply_DEDCN20_305_wa(%struct.mpc* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.mpc*, %struct.mpc** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %89 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pwl_params*, %struct.pwl_params** %6, align 8
  %92 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mpc20_program_ogam_pwl(%struct.mpc* %86, i32 %87, i32 %90, i32 %93)
  %95 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** @MPCC_OGAM_MODE, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @LUT_RAM_A, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 2
  %106 = call i32 @REG_SET(i32 %99, i32 0, i32* %100, i32 %105)
  br label %107

107:                                              ; preds = %80, %32, %21
  ret void
}

declare dso_local %struct.dcn20_mpc* @TO_DCN20_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

declare dso_local i32 @mpc20_get_ogam_current(%struct.mpc*, i32) #1

declare dso_local i32 @mpc20_power_on_ogam_lut(%struct.mpc*, i32, i32) #1

declare dso_local i32 @mpc20_configure_ogam_lut(%struct.mpc*, i32, i32) #1

declare dso_local i32 @mpc2_program_luta(%struct.mpc*, i32, %struct.pwl_params*) #1

declare dso_local i32 @mpc2_program_lutb(%struct.mpc*, i32, %struct.pwl_params*) #1

declare dso_local i32 @apply_DEDCN20_305_wa(%struct.mpc*, i32, i32, i32) #1

declare dso_local i32 @mpc20_program_ogam_pwl(%struct.mpc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
