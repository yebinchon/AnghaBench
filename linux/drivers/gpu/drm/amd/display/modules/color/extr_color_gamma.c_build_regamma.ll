; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_regamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_regamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_float_data_ex = type { i32, i32, i32 }
%struct.hw_x_point = type { i32 }
%struct.gamma_coefficients = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pow_buffer = common dso_local global i32 0, align 4
@NUM_PTS_IN_REGION = common dso_local global i32 0, align 4
@pow_buffer_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwl_float_data_ex*, i64, %struct.hw_x_point*, i32)* @build_regamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_regamma(%struct.pwl_float_data_ex* %0, i64 %1, %struct.hw_x_point* %2, i32 %3) #0 {
  %5 = alloca %struct.pwl_float_data_ex*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hw_x_point*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.gamma_coefficients*, align 8
  %12 = alloca %struct.pwl_float_data_ex*, align 8
  %13 = alloca %struct.hw_x_point*, align 8
  store %struct.pwl_float_data_ex* %0, %struct.pwl_float_data_ex** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hw_x_point* %2, %struct.hw_x_point** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  store %struct.pwl_float_data_ex* %14, %struct.pwl_float_data_ex** %12, align 8
  %15 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  store %struct.hw_x_point* %15, %struct.hw_x_point** %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.gamma_coefficients* @kvzalloc(i32 4, i32 %16)
  store %struct.gamma_coefficients* %17, %struct.gamma_coefficients** %11, align 8
  %18 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %11, align 8
  %19 = icmp ne %struct.gamma_coefficients* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @build_coefficients(%struct.gamma_coefficients* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %63

27:                                               ; preds = %21
  %28 = load i32, i32* @pow_buffer, align 4
  %29 = load i32, i32* @NUM_PTS_IN_REGION, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32 %28, i32 0, i32 %32)
  store i32 0, i32* @pow_buffer_ptr, align 4
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %38, %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load %struct.hw_x_point*, %struct.hw_x_point** %13, align 8
  %40 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %11, align 8
  %43 = call i32 @translate_from_linear_space_ex(i32 %41, %struct.gamma_coefficients* %42, i32 0)
  %44 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %45 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %47 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %50 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %52 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %55 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hw_x_point*, %struct.hw_x_point** %13, align 8
  %57 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %56, i32 1
  store %struct.hw_x_point* %57, %struct.hw_x_point** %13, align 8
  %58 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %12, align 8
  %59 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %58, i32 1
  store %struct.pwl_float_data_ex* %59, %struct.pwl_float_data_ex** %12, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %9, align 8
  br label %34

62:                                               ; preds = %34
  store i32 -1, i32* @pow_buffer_ptr, align 4
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %26, %20
  %64 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %11, align 8
  %65 = call i32 @kfree(%struct.gamma_coefficients* %64)
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.gamma_coefficients* @kvzalloc(i32, i32) #1

declare dso_local i32 @build_coefficients(%struct.gamma_coefficients*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @translate_from_linear_space_ex(i32, %struct.gamma_coefficients*, i32) #1

declare dso_local i32 @kfree(%struct.gamma_coefficients*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
