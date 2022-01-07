; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_copy_rgb_regamma_to_coordinates_x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_copy_rgb_regamma_to_coordinates_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_x_point = type { i32, i32, i32 }
%struct.pwl_float_data_ex = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_x_point*, i64, %struct.pwl_float_data_ex*)* @copy_rgb_regamma_to_coordinates_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_rgb_regamma_to_coordinates_x(%struct.hw_x_point* %0, i64 %1, %struct.pwl_float_data_ex* %2) #0 {
  %4 = alloca %struct.hw_x_point*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pwl_float_data_ex*, align 8
  %7 = alloca %struct.hw_x_point*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pwl_float_data_ex*, align 8
  store %struct.hw_x_point* %0, %struct.hw_x_point** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.pwl_float_data_ex* %2, %struct.pwl_float_data_ex** %6, align 8
  %10 = load %struct.hw_x_point*, %struct.hw_x_point** %4, align 8
  store %struct.hw_x_point* %10, %struct.hw_x_point** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %6, align 8
  store %struct.pwl_float_data_ex* %11, %struct.pwl_float_data_ex** %9, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, 1
  %16 = icmp sle i64 %13, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %12
  %18 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %19 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  %22 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %24 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  %27 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %29 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  %32 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  %34 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %33, i32 1
  store %struct.hw_x_point* %34, %struct.hw_x_point** %7, align 8
  %35 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %9, align 8
  %36 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %35, i32 1
  store %struct.pwl_float_data_ex* %36, %struct.pwl_float_data_ex** %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %12

39:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
