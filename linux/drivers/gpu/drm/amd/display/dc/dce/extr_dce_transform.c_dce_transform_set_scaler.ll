; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_dce_transform_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.scaler_data = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dce_transform = type { i32*, i32*, i32 }
%struct.scl_ratios_inits = type { i32 }

@LB_MEMORY_CTRL = common dso_local global i32 0, align 4
@LB_MEMORY_CONFIG = common dso_local global i32 0, align 4
@LB_MEMORY_SIZE = common dso_local global i32 0, align 4
@SCL_F_SHARP_CONTROL = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_CONTROL = common dso_local global i32 0, align 4
@SCL_V_2TAP_HARDCODE_COEF_EN = common dso_local global i32 0, align 4
@FILTER_TYPE_RGB_Y_VERTICAL = common dso_local global i32 0, align 4
@FILTER_TYPE_ALPHA_VERTICAL = common dso_local global i32 0, align 4
@SCL_HORZ_FILTER_CONTROL = common dso_local global i32 0, align 4
@SCL_H_2TAP_HARDCODE_COEF_EN = common dso_local global i32 0, align 4
@FILTER_TYPE_RGB_Y_HORIZONTAL = common dso_local global i32 0, align 4
@FILTER_TYPE_ALPHA_HORIZONTAL = common dso_local global i32 0, align 4
@SCL_UPDATE = common dso_local global i32 0, align 4
@SCL_COEF_UPDATE_COMPLETE = common dso_local global i32 0, align 4
@LB_DATA_FORMAT = common dso_local global i32 0, align 4
@ALPHA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, %struct.scaler_data*)* @dce_transform_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_transform_set_scaler(%struct.transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scl_ratios_inits, align 4
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %11 = load %struct.transform*, %struct.transform** %3, align 8
  %12 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %11)
  store %struct.dce_transform* %12, %struct.dce_transform** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @LB_MEMORY_CTRL, align 4
  %14 = load i32, i32* @LB_MEMORY_CONFIG, align 4
  %15 = load i32, i32* @LB_MEMORY_SIZE, align 4
  %16 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %17 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @REG_SET_2(i32 %13, i32 0, i32 %14, i32 0, i32 %15, i32 %18)
  %20 = load i32, i32* @SCL_F_SHARP_CONTROL, align 4
  %21 = call i32 @REG_WRITE(i32 %20, i32 0)
  %22 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %23 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %24 = call i32 @program_overscan(%struct.dce_transform* %22, %struct.scaler_data* %23)
  %25 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %26 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %27 = call i32 @setup_scaling_configuration(%struct.dce_transform* %25, %struct.scaler_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %124

30:                                               ; preds = %2
  %31 = bitcast %struct.scl_ratios_inits* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 4, i1 false)
  %32 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %33 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %34 = call i32 @calculate_inits(%struct.dce_transform* %32, %struct.scaler_data* %33, %struct.scl_ratios_inits* %10)
  %35 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %36 = call i32 @program_scl_ratios_inits(%struct.dce_transform* %35, %struct.scl_ratios_inits* %10)
  %37 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %38 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %42 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32* @get_filter_coeffs_16p(i32 %40, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %47 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %51 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @get_filter_coeffs_16p(i32 %49, i32 %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %57 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %30
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %63 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %61, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %60, %30
  %67 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %68 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @SCL_VERT_FILTER_CONTROL, align 4
  %73 = load i32, i32* @SCL_V_2TAP_HARDCODE_COEF_EN, align 4
  %74 = call i32 @REG_SET(i32 %72, i32 0, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %77 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %78 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @FILTER_TYPE_RGB_Y_VERTICAL, align 4
  %83 = call i32 @program_multi_taps_filter(%struct.dce_transform* %76, i32 %80, i32* %81, i32 %82)
  %84 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %85 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %86 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @FILTER_TYPE_ALPHA_VERTICAL, align 4
  %91 = call i32 @program_multi_taps_filter(%struct.dce_transform* %84, i32 %88, i32* %89, i32 %90)
  %92 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %93 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %75
  %97 = load i32, i32* @SCL_HORZ_FILTER_CONTROL, align 4
  %98 = load i32, i32* @SCL_H_2TAP_HARDCODE_COEF_EN, align 4
  %99 = call i32 @REG_SET(i32 %97, i32 0, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %96, %75
  %101 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %102 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %103 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* @FILTER_TYPE_RGB_Y_HORIZONTAL, align 4
  %108 = call i32 @program_multi_taps_filter(%struct.dce_transform* %101, i32 %105, i32* %106, i32 %107)
  %109 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %110 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %111 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* @FILTER_TYPE_ALPHA_HORIZONTAL, align 4
  %116 = call i32 @program_multi_taps_filter(%struct.dce_transform* %109, i32 %113, i32* %114, i32 %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %119 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %118, i32 0, i32 1
  store i32* %117, i32** %119, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %122 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  store i32 1, i32* %7, align 4
  br label %123

123:                                              ; preds = %100, %60
  br label %124

124:                                              ; preds = %123, %2
  %125 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %126 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %127 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %126, i32 0, i32 1
  %128 = call i32 @program_viewport(%struct.dce_transform* %125, i32* %127)
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @SCL_UPDATE, align 4
  %133 = load i32, i32* @SCL_COEF_UPDATE_COMPLETE, align 4
  %134 = call i32 @REG_UPDATE(i32 %132, i32 %133, i32 1)
  br label %135

135:                                              ; preds = %131, %124
  %136 = load i32, i32* @LB_DATA_FORMAT, align 4
  %137 = load i32, i32* @ALPHA_EN, align 4
  %138 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %139 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @REG_UPDATE(i32 %136, i32 %137, i32 %141)
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @program_overscan(%struct.dce_transform*, %struct.scaler_data*) #1

declare dso_local i32 @setup_scaling_configuration(%struct.dce_transform*, %struct.scaler_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @calculate_inits(%struct.dce_transform*, %struct.scaler_data*, %struct.scl_ratios_inits*) #1

declare dso_local i32 @program_scl_ratios_inits(%struct.dce_transform*, %struct.scl_ratios_inits*) #1

declare dso_local i32* @get_filter_coeffs_16p(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @program_multi_taps_filter(%struct.dce_transform*, i32, i32*, i32) #1

declare dso_local i32 @program_viewport(%struct.dce_transform*, i32*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
