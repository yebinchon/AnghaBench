; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_hlg_regamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_hlg_regamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_float_data_ex = type { i32, i32, i32 }
%struct.hw_x_point = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwl_float_data_ex*, i64, %struct.hw_x_point*, i64, i64)* @build_hlg_regamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_hlg_regamma(%struct.pwl_float_data_ex* %0, i64 %1, %struct.hw_x_point* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.pwl_float_data_ex*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hw_x_point*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pwl_float_data_ex*, align 8
  %13 = alloca %struct.hw_x_point*, align 8
  store %struct.pwl_float_data_ex* %0, %struct.pwl_float_data_ex** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.hw_x_point* %2, %struct.hw_x_point** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %6, align 8
  store %struct.pwl_float_data_ex* %14, %struct.pwl_float_data_ex** %12, align 8
  %15 = load %struct.hw_x_point*, %struct.hw_x_point** %8, align 8
  store %struct.hw_x_point* %15, %struct.hw_x_point** %13, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %21, %5
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add nsw i64 %18, 1
  %20 = icmp ne i64 %17, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load %struct.hw_x_point*, %struct.hw_x_point** %13, align 8
  %23 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %26 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @compute_hlg_oetf(i32 %24, i32* %26, i64 %27, i64 %28)
  %30 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %31 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %34 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %36 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %39 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hw_x_point*, %struct.hw_x_point** %13, align 8
  %41 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %40, i32 1
  store %struct.hw_x_point* %41, %struct.hw_x_point** %13, align 8
  %42 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %43 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %42, i32 1
  store %struct.pwl_float_data_ex* %43, %struct.pwl_float_data_ex** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %16

46:                                               ; preds = %16
  ret void
}

declare dso_local i32 @compute_hlg_oetf(i32, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
