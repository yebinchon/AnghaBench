; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_apply_degamma_for_user_regamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_apply_degamma_for_user_regamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_x_point = type { i32 }
%struct.pwl_float_data_ex = type { i32, i32, i32 }
%struct.gamma_coefficients = type { i32 }

@coordinates_x = common dso_local global %struct.hw_x_point* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwl_float_data_ex*, i64)* @apply_degamma_for_user_regamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_degamma_for_user_regamma(%struct.pwl_float_data_ex* %0, i64 %1) #0 {
  %3 = alloca %struct.pwl_float_data_ex*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gamma_coefficients, align 4
  %7 = alloca %struct.pwl_float_data_ex*, align 8
  %8 = alloca %struct.hw_x_point*, align 8
  store %struct.pwl_float_data_ex* %0, %struct.pwl_float_data_ex** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %3, align 8
  store %struct.pwl_float_data_ex* %9, %struct.pwl_float_data_ex** %7, align 8
  %10 = load %struct.hw_x_point*, %struct.hw_x_point** @coordinates_x, align 8
  store %struct.hw_x_point* %10, %struct.hw_x_point** %8, align 8
  %11 = call i32 @build_coefficients(%struct.gamma_coefficients* %6, i32 1)
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 1
  %16 = icmp ne i64 %13, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.hw_x_point*, %struct.hw_x_point** %8, align 8
  %19 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @translate_from_linear_space_ex(i32 %20, %struct.gamma_coefficients* %6, i32 0)
  %22 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %23 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %25 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %28 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %30 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %33 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hw_x_point*, %struct.hw_x_point** %8, align 8
  %35 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %34, i32 1
  store %struct.hw_x_point* %35, %struct.hw_x_point** %8, align 8
  %36 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %7, align 8
  %37 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %36, i32 1
  store %struct.pwl_float_data_ex* %37, %struct.pwl_float_data_ex** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %12

40:                                               ; preds = %12
  ret void
}

declare dso_local i32 @build_coefficients(%struct.gamma_coefficients*, i32) #1

declare dso_local i32 @translate_from_linear_space_ex(i32, %struct.gamma_coefficients*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
