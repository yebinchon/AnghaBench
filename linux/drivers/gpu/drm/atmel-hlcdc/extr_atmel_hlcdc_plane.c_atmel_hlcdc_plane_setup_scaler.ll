; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_setup_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_setup_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.atmel_hlcdc_plane_state = type { i32, i32, i32, i32 }

@ATMEL_HLCDC_XPHIDEF = common dso_local global i32 0, align 4
@ATMEL_HLCDC_YPHIDEF = common dso_local global i32 0, align 4
@heo_downscaling_xcoef = common dso_local global i32 0, align 4
@heo_upscaling_xcoef = common dso_local global i32 0, align 4
@heo_downscaling_ycoef = common dso_local global i32 0, align 4
@heo_upscaling_ycoef = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_SCALER_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmel_hlcdc_plane_setup_scaler(%struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane_state* %1) #0 {
  %3 = alloca %struct.atmel_hlcdc_plane*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atmel_hlcdc_plane* %0, %struct.atmel_hlcdc_plane** %3, align 8
  store %struct.atmel_hlcdc_plane_state* %1, %struct.atmel_hlcdc_plane_state** %4, align 8
  %8 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %10, align 8
  store %struct.atmel_hlcdc_layer_desc* %11, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %12 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %140

18:                                               ; preds = %2
  %19 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %20 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %35, i32 0, i32 0
  %37 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_6__* %36, i32 %40, i32 0)
  br label %140

42:                                               ; preds = %26, %18
  %43 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %44 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %42
  %50 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %51 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %54 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATMEL_HLCDC_XPHIDEF, align 4
  %57 = call i32 @atmel_hlcdc_plane_phiscaler_get_factor(i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %59 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %62 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATMEL_HLCDC_YPHIDEF, align 4
  %65 = call i32 @atmel_hlcdc_plane_phiscaler_get_factor(i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %67 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %68 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %71 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %49
  %75 = load i32, i32* @heo_downscaling_xcoef, align 4
  br label %78

76:                                               ; preds = %49
  %77 = load i32, i32* @heo_upscaling_xcoef, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32, i32* @heo_upscaling_xcoef, align 4
  %81 = call i32 @ARRAY_SIZE(i32 %80)
  %82 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %83 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @atmel_hlcdc_plane_scaler_set_phicoeff(%struct.atmel_hlcdc_plane* %66, i32 %79, i32 %81, i64 %86)
  %88 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %89 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %93 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %78
  %97 = load i32, i32* @heo_downscaling_ycoef, align 4
  br label %100

98:                                               ; preds = %78
  %99 = load i32, i32* @heo_upscaling_ycoef, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = load i32, i32* @heo_upscaling_ycoef, align 4
  %103 = call i32 @ARRAY_SIZE(i32 %102)
  %104 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %105 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @atmel_hlcdc_plane_scaler_set_phicoeff(%struct.atmel_hlcdc_plane* %88, i32 %101, i32 %103, i64 %108)
  br label %127

110:                                              ; preds = %42
  %111 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %112 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 1024, %113
  %115 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %116 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %114, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %120 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 1024, %121
  %123 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %4, align 8
  %124 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %122, %125
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %110, %100
  %128 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %3, align 8
  %129 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %128, i32 0, i32 0
  %130 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %131 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ATMEL_HLCDC_LAYER_SCALER_ENABLE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @ATMEL_HLCDC_LAYER_SCALER_FACTORS(i32 %135, i32 %136)
  %138 = or i32 %134, %137
  %139 = call i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_6__* %129, i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %127, %34, %17
  ret void
}

declare dso_local i32 @atmel_hlcdc_layer_write_cfg(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_plane_phiscaler_get_factor(i32, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_plane_scaler_set_phicoeff(%struct.atmel_hlcdc_plane*, i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ATMEL_HLCDC_LAYER_SCALER_FACTORS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
