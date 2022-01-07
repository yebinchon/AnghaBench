; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_map_regamma_hw_to_x_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_map_regamma_hw_to_x_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_gamma = type { i32 }
%struct.pixel_gamma_point = type { i32 }
%struct.pwl_float_data = type { i32 }
%struct.hw_x_point = type { i32 }
%struct.gamma_pixel = type { i32 }
%struct.pwl_float_data_ex = type { i32, i32, i32 }
%struct.dc_transfer_func_distributed_points = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_gamma*, %struct.pixel_gamma_point*, %struct.pwl_float_data*, %struct.hw_x_point*, %struct.gamma_pixel*, %struct.pwl_float_data_ex*, i32, %struct.dc_transfer_func_distributed_points*, i32)* @map_regamma_hw_to_x_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_regamma_hw_to_x_user(%struct.dc_gamma* %0, %struct.pixel_gamma_point* %1, %struct.pwl_float_data* %2, %struct.hw_x_point* %3, %struct.gamma_pixel* %4, %struct.pwl_float_data_ex* %5, i32 %6, %struct.dc_transfer_func_distributed_points* %7, i32 %8) #0 {
  %10 = alloca %struct.dc_gamma*, align 8
  %11 = alloca %struct.pixel_gamma_point*, align 8
  %12 = alloca %struct.pwl_float_data*, align 8
  %13 = alloca %struct.hw_x_point*, align 8
  %14 = alloca %struct.gamma_pixel*, align 8
  %15 = alloca %struct.pwl_float_data_ex*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dc_transfer_func_distributed_points*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.hw_x_point*, align 8
  %21 = alloca %struct.pwl_float_data_ex*, align 8
  store %struct.dc_gamma* %0, %struct.dc_gamma** %10, align 8
  store %struct.pixel_gamma_point* %1, %struct.pixel_gamma_point** %11, align 8
  store %struct.pwl_float_data* %2, %struct.pwl_float_data** %12, align 8
  store %struct.hw_x_point* %3, %struct.hw_x_point** %13, align 8
  store %struct.gamma_pixel* %4, %struct.gamma_pixel** %14, align 8
  store %struct.pwl_float_data_ex* %5, %struct.pwl_float_data_ex** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.dc_transfer_func_distributed_points* %7, %struct.dc_transfer_func_distributed_points** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load %struct.hw_x_point*, %struct.hw_x_point** %13, align 8
  store %struct.hw_x_point* %22, %struct.hw_x_point** %20, align 8
  %23 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %15, align 8
  store %struct.pwl_float_data_ex* %23, %struct.pwl_float_data_ex** %21, align 8
  %24 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %25 = icmp ne %struct.dc_gamma* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %9
  %27 = load i32, i32* %18, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.hw_x_point*, %struct.hw_x_point** %20, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %15, align 8
  %33 = call i32 @copy_rgb_regamma_to_coordinates_x(%struct.hw_x_point* %30, i32 %31, %struct.pwl_float_data_ex* %32)
  %34 = load %struct.dc_gamma*, %struct.dc_gamma** %10, align 8
  %35 = load %struct.pixel_gamma_point*, %struct.pixel_gamma_point** %11, align 8
  %36 = load %struct.pwl_float_data*, %struct.pwl_float_data** %12, align 8
  %37 = load %struct.hw_x_point*, %struct.hw_x_point** %20, align 8
  %38 = load %struct.gamma_pixel*, %struct.gamma_pixel** %14, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %17, align 8
  %41 = call i32 @calculate_interpolated_hardware_curve(%struct.dc_gamma* %34, %struct.pixel_gamma_point* %35, %struct.pwl_float_data* %36, %struct.hw_x_point* %37, %struct.gamma_pixel* %38, i32 %39, %struct.dc_transfer_func_distributed_points* %40)
  br label %80

42:                                               ; preds = %26, %9
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %21, align 8
  %49 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %17, align 8
  %52 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %21, align 8
  %58 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %17, align 8
  %61 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %21, align 8
  %67 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %17, align 8
  %70 = getelementptr inbounds %struct.dc_transfer_func_distributed_points, %struct.dc_transfer_func_distributed_points* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %21, align 8
  %76 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %75, i32 1
  store %struct.pwl_float_data_ex* %76, %struct.pwl_float_data_ex** %21, align 8
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %19, align 4
  br label %43

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.dc_transfer_func_distributed_points*, %struct.dc_transfer_func_distributed_points** %17, align 8
  %83 = call i32 @build_new_custom_resulted_curve(i32 %81, %struct.dc_transfer_func_distributed_points* %82)
  ret i32 1
}

declare dso_local i32 @copy_rgb_regamma_to_coordinates_x(%struct.hw_x_point*, i32, %struct.pwl_float_data_ex*) #1

declare dso_local i32 @calculate_interpolated_hardware_curve(%struct.dc_gamma*, %struct.pixel_gamma_point*, %struct.pwl_float_data*, %struct.hw_x_point*, %struct.gamma_pixel*, i32, %struct.dc_transfer_func_distributed_points*) #1

declare dso_local i32 @build_new_custom_resulted_curve(i32, %struct.dc_transfer_func_distributed_points*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
