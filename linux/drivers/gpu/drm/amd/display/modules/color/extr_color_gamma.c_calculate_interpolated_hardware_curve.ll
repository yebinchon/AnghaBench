; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_interpolated_hardware_curve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_interpolated_hardware_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_gamma = type { i64 }
%struct.pixel_gamma_point = type { i32 }
%struct.pwl_float_data = type { i32 }
%struct.hw_x_point = type { i32 }
%struct.gamma_pixel = type { i32 }
%struct.dc_transfer_func_distributed_points = type { i8**, i8**, i8** }

@CHANNEL_NAME_RED = common dso_local global i32 0, align 4
@CHANNEL_NAME_GREEN = common dso_local global i32 0, align 4
@CHANNEL_NAME_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_gamma*, %struct.pixel_gamma_point*, %struct.pwl_float_data*, %struct.hw_x_point*, %struct.gamma_pixel*, i32, %struct.dc_transfer_func_distributed_points*)* @calculate_interpolated_hardware_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_interpolated_hardware_curve(%struct.dc_gamma* %0, %struct.pixel_gamma_point* %1, %struct.pwl_float_data* %2, %struct.hw_x_point* %3, %struct.gamma_pixel* %4, i32 %5, %struct.dc_transfer_func_distributed_points* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc_gamma*, align 8
  %10 = alloca %struct.pixel_gamma_point*, align 8
  %11 = alloca %struct.pwl_float_data*, align 8
  %12 = alloca %struct.hw_x_point*, align 8
  %13 = alloca %struct.gamma_pixel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %16 = alloca %struct.pixel_gamma_point*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dc_gamma* %0, %struct.dc_gamma** %9, align 8
  store %struct.pixel_gamma_point* %1, %struct.pixel_gamma_point** %10, align 8
  store %struct.pwl_float_data* %2, %struct.pwl_float_data** %11, align 8
  store %struct.hw_x_point* %3, %struct.hw_x_point** %12, align 8
  store %struct.gamma_pixel* %4, %struct.gamma_pixel** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.dc_transfer_func_distributed_points* %6, %struct.dc_transfer_func_distributed_points** %15, align 8
  %19 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %10, align 8
  store %struct.pixel_gamma_point* %19, %struct.pixel_gamma_point** %16, align 8
  store i32 2, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %20

20:                                               ; preds = %34, %7
  %21 = load i32, i32* %18, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load %struct.dc_gamma*, %struct.dc_gamma** %9, align 8
  %25 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %10, align 8
  %26 = load %struct.hw_x_point*, %struct.hw_x_point** %12, align 8
  %27 = load %struct.gamma_pixel*, %struct.gamma_pixel** %13, align 8
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @build_custom_gamma_mapping_coefficients_worker(%struct.dc_gamma* %24, %struct.pixel_gamma_point* %25, %struct.hw_x_point* %26, %struct.gamma_pixel* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %88

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %18, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %18, align 4
  br label %20

37:                                               ; preds = %20
  store i32 0, i32* %18, align 4
  %38 = load %struct.dc_gamma*, %struct.dc_gamma** %9, align 8
  %39 = getelementptr inbounds %struct.dc_gamma, %struct.dc_gamma* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %49, %37
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %45
  %50 = load %struct.pwl_float_data*, %struct.pwl_float_data** %11, align 8
  %51 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %16, align 8
  %52 = load i32, i32* @CHANNEL_NAME_RED, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i8* @calculate_mapped_value(%struct.pwl_float_data* %50, %struct.pixel_gamma_point* %51, i32 %52, i32 %53)
  %55 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %15, align 8
  %56 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %54, i8** %60, align 8
  %61 = load %struct.pwl_float_data*, %struct.pwl_float_data** %11, align 8
  %62 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %16, align 8
  %63 = load i32, i32* @CHANNEL_NAME_GREEN, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i8* @calculate_mapped_value(%struct.pwl_float_data* %61, %struct.pixel_gamma_point* %62, i32 %63, i32 %64)
  %66 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %15, align 8
  %67 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  store i8* %65, i8** %71, align 8
  %72 = load %struct.pwl_float_data*, %struct.pwl_float_data** %11, align 8
  %73 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %16, align 8
  %74 = load i32, i32* @CHANNEL_NAME_BLUE, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i8* @calculate_mapped_value(%struct.pwl_float_data* %72, %struct.pixel_gamma_point* %73, i32 %74, i32 %75)
  %77 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %15, align 8
  %78 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  %83 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %16, align 8
  %84 = getelementptr inbounds %struct.pixel_gamma_point, %struct.pixel_gamma_point* %83, i32 1
  store %struct.pixel_gamma_point* %84, %struct.pixel_gamma_point** %16, align 8
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %45

87:                                               ; preds = %45
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %32
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @build_custom_gamma_mapping_coefficients_worker(%struct.dc_gamma*, %struct.pixel_gamma_point*, %struct.hw_x_point*, %struct.gamma_pixel*, i32, i32) #1

declare dso_local i8* @calculate_mapped_value(%struct.pwl_float_data*, %struct.pixel_gamma_point*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
