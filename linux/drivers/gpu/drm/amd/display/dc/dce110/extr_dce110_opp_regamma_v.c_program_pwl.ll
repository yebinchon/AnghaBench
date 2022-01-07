; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_regamma_v.c_program_pwl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_regamma_v.c_program_pwl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pwl_params = type { i64, %struct.pwl_result_data* }
%struct.pwl_result_data = type { i64, i64, i64, i64, i64, i64 }

@GAMMA_CORR_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@mmGAMMA_CORR_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@mmGAMMA_CORR_LUT_INDEX = common dso_local global i64 0, align 8
@mmGAMMA_CORR_LUT_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.pwl_params*)* @program_pwl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_pwl(%struct.dce_transform* %0, %struct.pwl_params* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.pwl_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pwl_result_data*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.pwl_params* %1, %struct.pwl_params** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @GAMMA_CORR_LUT_WRITE_EN_MASK, align 4
  %11 = load i32, i32* @GAMMA_CORR_LUT_WRITE_EN_MASK, align 4
  %12 = call i32 @set_reg_field_value(i64 %9, i32 7, i32 %10, i32 %11)
  %13 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %14 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @mmGAMMA_CORR_LUT_WRITE_EN_MASK, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @dm_write_reg(i32 %16, i64 %17, i64 %18)
  %20 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %21 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @mmGAMMA_CORR_LUT_INDEX, align 8
  %25 = call i32 @dm_write_reg(i32 %23, i64 %24, i64 0)
  %26 = load i64, i64* @mmGAMMA_CORR_LUT_DATA, align 8
  store i64 %26, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %27 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %28 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %27, i32 0, i32 1
  %29 = load %struct.pwl_result_data*, %struct.pwl_result_data** %28, align 8
  store %struct.pwl_result_data* %29, %struct.pwl_result_data** %8, align 8
  br label %30

30:                                               ; preds = %36, %2
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.pwl_params*, %struct.pwl_params** %4, align 8
  %33 = getelementptr inbounds %struct.pwl_params, %struct.pwl_params* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %30
  %37 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %38 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %43 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dm_write_reg(i32 %40, i64 %41, i64 %44)
  %46 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %47 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %52 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @dm_write_reg(i32 %49, i64 %50, i64 %53)
  %55 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %56 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %61 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @dm_write_reg(i32 %58, i64 %59, i64 %62)
  %64 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %65 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %70 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dm_write_reg(i32 %67, i64 %68, i64 %71)
  %73 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %74 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %79 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dm_write_reg(i32 %76, i64 %77, i64 %80)
  %82 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %83 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %88 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dm_write_reg(i32 %85, i64 %86, i64 %89)
  %91 = load %struct.pwl_result_data*, %struct.pwl_result_data** %8, align 8
  %92 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %91, i32 1
  store %struct.pwl_result_data* %92, %struct.pwl_result_data** %8, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %30

95:                                               ; preds = %30
  ret void
}

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
