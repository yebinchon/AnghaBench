; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_setup_scaling_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_setup_scaling_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dc_context* }
%struct.dc_context = type { i32 }
%struct.scaler_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@SCLV_TAP_CONTROL = common dso_local global i32 0, align 4
@SCL_H_NUM_OF_TAPS = common dso_local global i32 0, align 4
@SCL_V_NUM_OF_TAPS = common dso_local global i32 0, align 4
@SCL_H_NUM_OF_TAPS_C = common dso_local global i32 0, align 4
@SCL_V_NUM_OF_TAPS_C = common dso_local global i32 0, align 4
@mmSCLV_TAP_CONTROL = common dso_local global i32 0, align 4
@SCLV_MODE = common dso_local global i32 0, align 4
@SCL_MODE = common dso_local global i32 0, align 4
@SCL_PSCL_EN = common dso_local global i32 0, align 4
@SCL_MODE_C = common dso_local global i32 0, align 4
@SCL_PSCL_EN_C = common dso_local global i32 0, align 4
@PIXEL_FORMAT_420BPP8 = common dso_local global i64 0, align 8
@mmSCLV_MODE = common dso_local global i32 0, align 4
@SCLV_CONTROL = common dso_local global i32 0, align 4
@SCL_BOUNDARY_MODE = common dso_local global i32 0, align 4
@mmSCLV_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_transform*, %struct.scaler_data*)* @setup_scaling_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_scaling_configuration(%struct.dce_transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_context*, align 8
  %7 = alloca i64, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %9 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  store %struct.dc_context* %11, %struct.dc_context** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @SCLV_TAP_CONTROL, align 4
  %19 = load i32, i32* @SCL_H_NUM_OF_TAPS, align 4
  %20 = call i32 @set_reg_field_value(i64 %12, i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %23 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @SCLV_TAP_CONTROL, align 4
  %28 = load i32, i32* @SCL_V_NUM_OF_TAPS, align 4
  %29 = call i32 @set_reg_field_value(i64 %21, i32 %26, i32 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %32 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @SCLV_TAP_CONTROL, align 4
  %37 = load i32, i32* @SCL_H_NUM_OF_TAPS_C, align 4
  %38 = call i32 @set_reg_field_value(i64 %30, i32 %35, i32 %36, i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %41 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* @SCLV_TAP_CONTROL, align 4
  %46 = load i32, i32* @SCL_V_NUM_OF_TAPS_C, align 4
  %47 = call i32 @set_reg_field_value(i64 %39, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %49 = load i32, i32* @mmSCLV_TAP_CONTROL, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @dm_write_reg(%struct.dc_context* %48, i32 %49, i64 %50)
  store i64 0, i64* %7, align 8
  %52 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %53 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %57 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %55, %59
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %71

62:                                               ; preds = %2
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* @SCLV_MODE, align 4
  %65 = load i32, i32* @SCL_MODE, align 4
  %66 = call i32 @set_reg_field_value(i64 %63, i32 1, i32 %64, i32 %65)
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* @SCLV_MODE, align 4
  %69 = load i32, i32* @SCL_PSCL_EN, align 4
  %70 = call i32 @set_reg_field_value(i64 %67, i32 1, i32 %68, i32 %69)
  store i32 1, i32* %5, align 4
  br label %80

71:                                               ; preds = %2
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* @SCLV_MODE, align 4
  %74 = load i32, i32* @SCL_MODE, align 4
  %75 = call i32 @set_reg_field_value(i64 %72, i32 0, i32 %73, i32 %74)
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* @SCLV_MODE, align 4
  %78 = load i32, i32* @SCL_PSCL_EN, align 4
  %79 = call i32 @set_reg_field_value(i64 %76, i32 0, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %62
  %81 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %82 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %86 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %84, %88
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %100

91:                                               ; preds = %80
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* @SCLV_MODE, align 4
  %94 = load i32, i32* @SCL_MODE_C, align 4
  %95 = call i32 @set_reg_field_value(i64 %92, i32 1, i32 %93, i32 %94)
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* @SCLV_MODE, align 4
  %98 = load i32, i32* @SCL_PSCL_EN_C, align 4
  %99 = call i32 @set_reg_field_value(i64 %96, i32 1, i32 %97, i32 %98)
  store i32 1, i32* %5, align 4
  br label %133

100:                                              ; preds = %80
  %101 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %102 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PIXEL_FORMAT_420BPP8, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i32, i32* @SCLV_MODE, align 4
  %110 = load i32, i32* @SCL_MODE, align 4
  %111 = call i32 @get_reg_field_value(i64 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @SCLV_MODE, align 4
  %113 = load i32, i32* @SCL_MODE_C, align 4
  %114 = call i32 @set_reg_field_value(i64 %107, i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* @SCLV_MODE, align 4
  %118 = load i32, i32* @SCL_PSCL_EN, align 4
  %119 = call i32 @get_reg_field_value(i64 %116, i32 %117, i32 %118)
  %120 = load i32, i32* @SCLV_MODE, align 4
  %121 = load i32, i32* @SCL_PSCL_EN_C, align 4
  %122 = call i32 @set_reg_field_value(i64 %115, i32 %119, i32 %120, i32 %121)
  br label %132

123:                                              ; preds = %100
  %124 = load i64, i64* %7, align 8
  %125 = load i32, i32* @SCLV_MODE, align 4
  %126 = load i32, i32* @SCL_MODE_C, align 4
  %127 = call i32 @set_reg_field_value(i64 %124, i32 0, i32 %125, i32 %126)
  %128 = load i64, i64* %7, align 8
  %129 = load i32, i32* @SCLV_MODE, align 4
  %130 = load i32, i32* @SCL_PSCL_EN_C, align 4
  %131 = call i32 @set_reg_field_value(i64 %128, i32 0, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %123, %106
  br label %133

133:                                              ; preds = %132, %91
  %134 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %135 = load i32, i32* @mmSCLV_MODE, align 4
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @dm_write_reg(%struct.dc_context* %134, i32 %135, i64 %136)
  store i64 0, i64* %7, align 8
  %138 = load i64, i64* %7, align 8
  %139 = load i32, i32* @SCLV_CONTROL, align 4
  %140 = load i32, i32* @SCL_BOUNDARY_MODE, align 4
  %141 = call i32 @set_reg_field_value(i64 %138, i32 1, i32 %139, i32 %140)
  %142 = load %struct.dc_context*, %struct.dc_context** %6, align 8
  %143 = load i32, i32* @mmSCLV_CONTROL, align 4
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @dm_write_reg(%struct.dc_context* %142, i32 %143, i64 %144)
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @set_reg_field_value(i64, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(%struct.dc_context*, i32, i64) #1

declare dso_local i32 @get_reg_field_value(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
