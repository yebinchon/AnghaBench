; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_user_regamma_ramp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_user_regamma_ramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_transfer_func = type { i32, %struct.dc_transfer_func_distributed_points }
%struct.dc_transfer_func_distributed_points = type { i32, i32, i32, i64 }
%struct.regamma_lut = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dividers = type { i8*, i32, i8* }
%struct.pwl_float_data = type { i32 }
%struct.pwl_float_data_ex = type { i32 }

@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i32 0, align 4
@GAMMA_RGB_256_ENTRIES = common dso_local global i64 0, align 8
@_EXTRA_POINTS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_HW_POINTS = common dso_local global i64 0, align 8
@coordinates_x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculate_user_regamma_ramp(%struct.dc_transfer_func* %0, %struct.regamma_lut* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_transfer_func*, align 8
  %5 = alloca %struct.regamma_lut*, align 8
  %6 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %7 = alloca %struct.dividers, align 8
  %8 = alloca %struct.pwl_float_data*, align 8
  %9 = alloca %struct.pwl_float_data_ex*, align 8
  %10 = alloca i32, align 4
  store %struct.dc_transfer_func* %0, %struct.dc_transfer_func** %4, align 8
  store %struct.regamma_lut* %1, %struct.regamma_lut** %5, align 8
  %11 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %4, align 8
  %12 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %11, i32 0, i32 1
  store %struct.dc_transfer_func_distributed_points* %12, %struct.dc_transfer_func_distributed_points** %6, align 8
  store %struct.pwl_float_data* null, %struct.pwl_float_data** %8, align 8
  store %struct.pwl_float_data_ex* null, %struct.pwl_float_data_ex** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.regamma_lut*, %struct.regamma_lut** %5, align 8
  %14 = icmp eq %struct.regamma_lut* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

16:                                               ; preds = %2
  %17 = load i32, i32* @TF_TYPE_DISTRIBUTED_POINTS, align 4
  %18 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %4, align 8
  %19 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* @GAMMA_RGB_256_ENTRIES, align 8
  %21 = load i64, i64* @_EXTRA_POINTS, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kcalloc(i64 %22, i32 4, i32 %23)
  %25 = bitcast i8* %24 to %struct.pwl_float_data*
  store %struct.pwl_float_data* %25, %struct.pwl_float_data** %8, align 8
  %26 = load %struct.pwl_float_data*, %struct.pwl_float_data** %8, align 8
  %27 = icmp ne %struct.pwl_float_data* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %90

29:                                               ; preds = %16
  %30 = load i64, i64* @MAX_HW_POINTS, align 8
  %31 = load i64, i64* @_EXTRA_POINTS, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i64 %32, i32 4, i32 %33)
  %35 = bitcast i8* %34 to %struct.pwl_float_data_ex*
  store %struct.pwl_float_data_ex* %35, %struct.pwl_float_data_ex** %9, align 8
  %36 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %37 = icmp ne %struct.pwl_float_data_ex* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %87

39:                                               ; preds = %29
  %40 = call i8* @dc_fixpt_from_fraction(i32 3, i32 2)
  %41 = getelementptr inbounds %struct.dividers, %struct.dividers* %7, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = call i32 @dc_fixpt_from_int(i32 2)
  %43 = getelementptr inbounds %struct.dividers, %struct.dividers* %7, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = call i8* @dc_fixpt_from_fraction(i32 5, i32 2)
  %45 = getelementptr inbounds %struct.dividers, %struct.dividers* %7, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.pwl_float_data*, %struct.pwl_float_data** %8, align 8
  %47 = load %struct.regamma_lut*, %struct.regamma_lut** %5, align 8
  %48 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %47, i32 0, i32 1
  %49 = call i32 @scale_user_regamma_ramp(%struct.pwl_float_data* %46, i32* %48, %struct.dividers* byval(%struct.dividers) align 8 %7)
  %50 = load %struct.regamma_lut*, %struct.regamma_lut** %5, align 8
  %51 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %39
  %57 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %58 = load i64, i64* @MAX_HW_POINTS, align 8
  %59 = call i32 @apply_degamma_for_user_regamma(%struct.pwl_float_data_ex* %57, i64 %58)
  %60 = load i32, i32* @coordinates_x, align 4
  %61 = load i64, i64* @MAX_HW_POINTS, align 8
  %62 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %63 = call i32 @copy_rgb_regamma_to_coordinates_x(i32 %60, i64 %61, %struct.pwl_float_data_ex* %62)
  br label %64

64:                                               ; preds = %56, %39
  %65 = load i64, i64* @MAX_HW_POINTS, align 8
  %66 = load %struct.pwl_float_data*, %struct.pwl_float_data** %8, align 8
  %67 = load %struct.regamma_lut*, %struct.regamma_lut** %5, align 8
  %68 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %73 = call i32 @interpolate_user_regamma(i64 %65, %struct.pwl_float_data* %66, i32 %71, %struct.dc_transfer_func_distributed_points* %72)
  %74 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %75 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %77 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %79 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %81 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load i64, i64* @MAX_HW_POINTS, align 8
  %83 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %6, align 8
  %84 = call i32 @build_new_custom_resulted_curve(i64 %82, %struct.dc_transfer_func_distributed_points* %83)
  store i32 1, i32* %10, align 4
  %85 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %86 = call i32 @kfree(%struct.pwl_float_data_ex* %85)
  br label %87

87:                                               ; preds = %64, %38
  %88 = load %struct.pwl_float_data*, %struct.pwl_float_data** %8, align 8
  %89 = call i32 @kvfree(%struct.pwl_float_data* %88)
  br label %90

90:                                               ; preds = %87, %28
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i8* @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i32) #1

declare dso_local i32 @scale_user_regamma_ramp(%struct.pwl_float_data*, i32*, %struct.dividers* byval(%struct.dividers) align 8) #1

declare dso_local i32 @apply_degamma_for_user_regamma(%struct.pwl_float_data_ex*, i64) #1

declare dso_local i32 @copy_rgb_regamma_to_coordinates_x(i32, i64, %struct.pwl_float_data_ex*) #1

declare dso_local i32 @interpolate_user_regamma(i64, %struct.pwl_float_data*, i32, %struct.dc_transfer_func_distributed_points*) #1

declare dso_local i32 @build_new_custom_resulted_curve(i64, %struct.dc_transfer_func_distributed_points*) #1

declare dso_local i32 @kfree(%struct.pwl_float_data_ex*) #1

declare dso_local i32 @kvfree(%struct.pwl_float_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
