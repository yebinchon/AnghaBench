; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp2_program_degamma_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp2_program_degamma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_result_data = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_dpp = type { i32 }

@CM_DGAM_LUT_WRITE_EN_MASK = common dso_local global i32 0, align 4
@CM_DGAM_LUT_WRITE_SEL = common dso_local global i32 0, align 4
@CM_DGAM_LUT_INDEX = common dso_local global i32 0, align 4
@CM_DGAM_LUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, %struct.pwl_result_data*, i64, i32)* @dpp2_program_degamma_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp2_program_degamma_lut(%struct.dpp* %0, %struct.pwl_result_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.pwl_result_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %5, align 8
  store %struct.pwl_result_data* %1, %struct.pwl_result_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.dpp*, %struct.dpp** %5, align 8
  %12 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %11)
  store %struct.dcn20_dpp* %12, %struct.dcn20_dpp** %10, align 8
  %13 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %14 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %15 = call i32 @REG_UPDATE(i32 %13, i32 %14, i32 7)
  %16 = load i32, i32* @CM_DGAM_LUT_WRITE_EN_MASK, align 4
  %17 = load i32, i32* @CM_DGAM_LUT_WRITE_SEL, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 1
  %22 = call i32 @REG_UPDATE(i32 %16, i32 %17, i32 %21)
  %23 = load i32, i32* @CM_DGAM_LUT_INDEX, align 4
  %24 = load i32, i32* @CM_DGAM_LUT_INDEX, align 4
  %25 = call i32 @REG_SET(i32 %23, i32 0, i32 %24, i32 0)
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %79, %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %32 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %33 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %33, i64 %34
  %36 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @REG_SET(i32 %31, i32 0, i32 %32, i32 %37)
  %39 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %40 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %41 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %41, i64 %42
  %44 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REG_SET(i32 %39, i32 0, i32 %40, i32 %45)
  %47 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %48 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %49 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %49, i64 %50
  %52 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @REG_SET(i32 %47, i32 0, i32 %48, i32 %53)
  %55 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %56 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %57 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %57, i64 %58
  %60 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @REG_SET(i32 %55, i32 0, i32 %56, i32 %61)
  %63 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %64 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %65 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %65, i64 %66
  %68 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @REG_SET(i32 %63, i32 0, i32 %64, i32 %69)
  %71 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %72 = load i32, i32* @CM_DGAM_LUT_DATA, align 4
  %73 = load %struct.pwl_result_data*, %struct.pwl_result_data** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %73, i64 %74
  %76 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @REG_SET(i32 %71, i32 0, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %30
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %26

82:                                               ; preds = %26
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
