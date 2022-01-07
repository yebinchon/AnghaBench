; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_degamma_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp_cm.c_dpp1_program_degamma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_result_data = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_dpp = type { i32 }

@CM_IGAM_LUT_RW_CONTROL = common dso_local global i32 0, align 4
@CM_IGAM_LUT_HOST_EN = common dso_local global i32 0, align 4
@CM_DGAM_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@CM_DGAM_LUT_WRITE_SEL = common dso_local global i32 0, align 4
@CM_DGAM_LUT_INDEX = common dso_local global i32 0, align 4
@CM_DGAM_LUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_program_degamma_lut(%struct.dpp* %0, %struct.pwl_result_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.pwl_result_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dcn10_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %5, align 8
  store %struct.pwl_result_data* %1, %struct.pwl_result_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dpp*, %struct.dpp** %5, align 8
  %12 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %11)
  store %struct.dcn10_dpp* %12, %struct.dcn10_dpp** %10, align 8
  %13 = load i32, i32* @CM_IGAM_LUT_RW_CONTROL, align 4
  %14 = load i32, i32* @CM_IGAM_LUT_HOST_EN, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %17 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %18 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 7)
  %19 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %20 = load i32, i32* @CM_DGAM_LUT_WRITE_SEL, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 1
  %25 = call i32 @REG_UPDATE(i32 %19, i32 %20, i32 %24)
  %26 = load i32, i32* @CM_DGAM_LUT_INDEX, align 4
  %27 = load i32, i32* @CM_DGAM_LUT_INDEX, align 4
  %28 = call i32 @REG_SET(i32 %26, i32 0, i32 %27, i32 0)
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %82, %4
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %29
  %34 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %35 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %36 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %36, i64 %37
  %39 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_SET(i32 %34, i32 0, i32 %35, i32 %40)
  %42 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %43 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %44 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %44, i64 %45
  %47 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_SET(i32 %42, i32 0, i32 %43, i32 %48)
  %50 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %51 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %52 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %52, i64 %53
  %55 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @REG_SET(i32 %50, i32 0, i32 %51, i32 %56)
  %58 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %59 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %60 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %60, i64 %61
  %63 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @REG_SET(i32 %58, i32 0, i32 %59, i32 %64)
  %66 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %67 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %68 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %68, i64 %69
  %71 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_SET(i32 %66, i32 0, i32 %67, i32 %72)
  %74 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %75 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %76 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %76, i64 %77
  %79 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @REG_SET(i32 %74, i32 0, i32 %75, i32 %80)
  br label %82

82:                                               ; preds = %33
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %29

85:                                               ; preds = %29
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
