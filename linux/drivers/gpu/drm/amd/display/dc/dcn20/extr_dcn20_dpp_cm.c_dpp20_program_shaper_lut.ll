; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_shaper_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dpp_cm.c_dpp20_program_shaper_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.pwl_result_data = type { i64, i64, i64, i64, i64, i64 }
%struct.dcn20_dpp = type { i32 }

@CM_SHAPER_LUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpp*, %struct.pwl_result_data*, i64)* @dpp20_program_shaper_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpp20_program_shaper_lut(%struct.dpp* %0, %struct.pwl_result_data* %1, i64 %2) #0 {
  %4 = alloca %struct.dpp*, align 8
  %5 = alloca %struct.pwl_result_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.dcn20_dpp*, align 8
  store %struct.dpp* %0, %struct.dpp** %4, align 8
  store %struct.pwl_result_data* %1, %struct.pwl_result_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.dpp*, %struct.dpp** %4, align 8
  %19 = call %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp* %18)
  store %struct.dcn20_dpp* %19, %struct.dcn20_dpp** %17, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %85, %3
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %20
  %25 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %25, i64 %26
  %28 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %30, i64 %31
  %33 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %35, i64 %36
  %38 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %40, i64 %41
  %43 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %45, i64 %46
  %48 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load %struct.pwl_result_data*, %struct.pwl_result_data** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %50, i64 %51
  %53 = getelementptr inbounds %struct.pwl_result_data, %struct.pwl_result_data* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %55, 1023
  %57 = shl i64 %56, 14
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %58, 16383
  %60 = or i64 %57, %59
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %12, align 8
  %62 = and i64 %61, 1023
  %63 = shl i64 %62, 14
  %64 = load i64, i64* %9, align 8
  %65 = and i64 %64, 16383
  %66 = or i64 %63, %65
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %13, align 8
  %68 = and i64 %67, 1023
  %69 = shl i64 %68, 14
  %70 = load i64, i64* %10, align 8
  %71 = and i64 %70, 16383
  %72 = or i64 %69, %71
  store i64 %72, i64* %16, align 8
  %73 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %74 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @REG_SET(i32 %73, i32 0, i32 %74, i64 %75)
  %77 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %78 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @REG_SET(i32 %77, i32 0, i32 %78, i64 %79)
  %81 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %82 = load i32, i32* @CM_SHAPER_LUT_DATA, align 4
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @REG_SET(i32 %81, i32 0, i32 %82, i64 %83)
  br label %85

85:                                               ; preds = %24
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  br label %20

88:                                               ; preds = %20
  ret void
}

declare dso_local %struct.dcn20_dpp* @TO_DCN20_DPP(%struct.dpp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
