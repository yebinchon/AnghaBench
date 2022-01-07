; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_transform_v.c_dce110_xfmv_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }
%struct.scaler_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dce_transform = type { i32*, i32*, i32*, i32* }
%struct.rect = type { i32 }
%struct.sclv_ratios_inits = type { i32 }

@FILTER_TYPE_RGB_Y_VERTICAL = common dso_local global i32 0, align 4
@FILTER_TYPE_CBCR_VERTICAL = common dso_local global i32 0, align 4
@FILTER_TYPE_RGB_Y_HORIZONTAL = common dso_local global i32 0, align 4
@FILTER_TYPE_CBCR_HORIZONTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, %struct.scaler_data*)* @dce110_xfmv_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce110_xfmv_set_scaler(%struct.transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.transform*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca %struct.dce_transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rect, align 4
  %13 = alloca %struct.rect, align 4
  %14 = alloca %struct.sclv_ratios_inits, align 4
  store %struct.transform* %0, %struct.transform** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %15 = load %struct.transform*, %struct.transform** %3, align 8
  %16 = call %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform* %15)
  store %struct.dce_transform* %16, %struct.dce_transform** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = bitcast %struct.rect* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = bitcast %struct.rect* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.transform*, %struct.transform** %3, align 8
  %20 = call i32 @dce110_xfmv_power_up_line_buffer(%struct.transform* %19)
  %21 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %22 = call i32 @calculate_viewport(%struct.scaler_data* %21, %struct.rect* %12, %struct.rect* %13)
  %23 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %24 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %25 = call i32 @program_overscan(%struct.dce_transform* %23, %struct.scaler_data* %24)
  %26 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %27 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %28 = call i32 @setup_scaling_configuration(%struct.dce_transform* %26, %struct.scaler_data* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %143

31:                                               ; preds = %2
  %32 = bitcast %struct.sclv_ratios_inits* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 4, i1 false)
  %33 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %34 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %35 = call i32 @calculate_inits(%struct.dce_transform* %33, %struct.scaler_data* %34, %struct.sclv_ratios_inits* %14, %struct.rect* %12, %struct.rect* %13)
  %36 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %37 = call i32 @program_scl_ratios_inits(%struct.dce_transform* %36, %struct.sclv_ratios_inits* %14)
  %38 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %39 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %43 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @get_filter_coeffs_64p(i32 %41, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %48 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %52 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @get_filter_coeffs_64p(i32 %50, i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %57 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %61 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32* @get_filter_coeffs_64p(i32 %59, i32 %63)
  store i32* %64, i32** %11, align 8
  %65 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %66 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %70 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @get_filter_coeffs_64p(i32 %68, i32 %72)
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %76 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %74, %77
  br i1 %78, label %97, label %79

79:                                               ; preds = %31
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %82 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %80, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %88 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %94 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %92, %95
  br i1 %96, label %97, label %142

97:                                               ; preds = %91, %85, %79, %31
  %98 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %99 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %100 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* @FILTER_TYPE_RGB_Y_VERTICAL, align 4
  %105 = call i32 @program_multi_taps_filter(%struct.dce_transform* %98, i32 %102, i32* %103, i32 %104)
  %106 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %107 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %108 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* @FILTER_TYPE_CBCR_VERTICAL, align 4
  %113 = call i32 @program_multi_taps_filter(%struct.dce_transform* %106, i32 %110, i32* %111, i32 %112)
  %114 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %115 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %116 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* @FILTER_TYPE_RGB_Y_HORIZONTAL, align 4
  %121 = call i32 @program_multi_taps_filter(%struct.dce_transform* %114, i32 %118, i32* %119, i32 %120)
  %122 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %123 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %124 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* @FILTER_TYPE_CBCR_HORIZONTAL, align 4
  %129 = call i32 @program_multi_taps_filter(%struct.dce_transform* %122, i32 %126, i32* %127, i32 %128)
  %130 = load i32*, i32** %8, align 8
  %131 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %132 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %131, i32 0, i32 3
  store i32* %130, i32** %132, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %135 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %134, i32 0, i32 2
  store i32* %133, i32** %135, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %138 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %141 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %140, i32 0, i32 0
  store i32* %139, i32** %141, align 8
  store i32 1, i32* %7, align 4
  br label %142

142:                                              ; preds = %97, %91
  br label %143

143:                                              ; preds = %142, %2
  %144 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %145 = call i32 @program_viewport(%struct.dce_transform* %144, %struct.rect* %12, %struct.rect* %13)
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.dce_transform*, %struct.dce_transform** %5, align 8
  %150 = call i32 @set_coeff_update_complete(%struct.dce_transform* %149)
  br label %151

151:                                              ; preds = %148, %143
  ret void
}

declare dso_local %struct.dce_transform* @TO_DCE_TRANSFORM(%struct.transform*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dce110_xfmv_power_up_line_buffer(%struct.transform*) #1

declare dso_local i32 @calculate_viewport(%struct.scaler_data*, %struct.rect*, %struct.rect*) #1

declare dso_local i32 @program_overscan(%struct.dce_transform*, %struct.scaler_data*) #1

declare dso_local i32 @setup_scaling_configuration(%struct.dce_transform*, %struct.scaler_data*) #1

declare dso_local i32 @calculate_inits(%struct.dce_transform*, %struct.scaler_data*, %struct.sclv_ratios_inits*, %struct.rect*, %struct.rect*) #1

declare dso_local i32 @program_scl_ratios_inits(%struct.dce_transform*, %struct.sclv_ratios_inits*) #1

declare dso_local i32* @get_filter_coeffs_64p(i32, i32) #1

declare dso_local i32 @program_multi_taps_filter(%struct.dce_transform*, i32, i32*, i32) #1

declare dso_local i32 @program_viewport(%struct.dce_transform*, %struct.rect*, %struct.rect*) #1

declare dso_local i32 @set_coeff_update_complete(%struct.dce_transform*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
