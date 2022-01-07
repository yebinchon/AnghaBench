; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_degamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_degamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwl_float_data_ex = type { i8*, i8*, i8* }
%struct.hw_x_point = type { i32 }
%struct.gamma_coefficients = type { i32 }

@NUM_PTS_IN_REGION = common dso_local global i32 0, align 4
@dc_fixpt_zero = common dso_local global i8* null, align 8
@dc_fixpt_one = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwl_float_data_ex*, i32, %struct.hw_x_point*, i32)* @build_degamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_degamma(%struct.pwl_float_data_ex* %0, i32 %1, %struct.hw_x_point* %2, i32 %3) #0 {
  %5 = alloca %struct.pwl_float_data_ex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_x_point*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gamma_coefficients, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pwl_float_data_ex* %0, %struct.pwl_float_data_ex** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hw_x_point* %2, %struct.hw_x_point** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @build_coefficients(%struct.gamma_coefficients* %10, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %120

18:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @NUM_PTS_IN_REGION, align 4
  %20 = mul nsw i32 13, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @NUM_PTS_IN_REGION, align 4
  %23 = mul nsw i32 12, %22
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %29, %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load i8*, i8** @dc_fixpt_zero, align 8
  %31 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %31, i64 %33
  %35 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %34, i32 0, i32 2
  store i8* %30, i8** %35, align 8
  %36 = load i8*, i8** @dc_fixpt_zero, align 8
  %37 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %37, i64 %39
  %41 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %40, i32 0, i32 1
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** @dc_fixpt_zero, align 8
  %43 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %43, i64 %45
  %47 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %25

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %51
  %56 = load %struct.hw_x_point*, %struct.hw_x_point** %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %56, i64 %58
  %60 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @translate_to_linear_space_ex(i32 %61, %struct.gamma_coefficients* %10, i32 0)
  %63 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %63, i64 %65
  %67 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %66, i32 0, i32 2
  store i8* %62, i8** %67, align 8
  %68 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %68, i64 %70
  %72 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %74, i64 %76
  %78 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %77, i32 0, i32 1
  store i8* %73, i8** %78, align 8
  %79 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %79, i64 %81
  %83 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %85, i64 %87
  %89 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %88, i32 0, i32 0
  store i8* %84, i8** %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %51

92:                                               ; preds = %51
  br label %93

93:                                               ; preds = %98, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load i8*, i8** @dc_fixpt_one, align 8
  %100 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %100, i64 %102
  %104 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %103, i32 0, i32 2
  store i8* %99, i8** %104, align 8
  %105 = load i8*, i8** @dc_fixpt_one, align 8
  %106 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %106, i64 %108
  %110 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %109, i32 0, i32 1
  store i8* %105, i8** %110, align 8
  %111 = load i8*, i8** @dc_fixpt_one, align 8
  %112 = load %struct.pwl_float_data_ex*, %struct.pwl_float_data_ex** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %112, i64 %114
  %116 = getelementptr inbounds %struct.pwl_float_data_ex, %struct.pwl_float_data_ex* %115, i32 0, i32 0
  store i8* %111, i8** %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %93

119:                                              ; preds = %93
  store i32 1, i32* %13, align 4
  br label %120

120:                                              ; preds = %119, %17
  %121 = load i32, i32* %13, align 4
  ret i32 %121
}

declare dso_local i32 @build_coefficients(%struct.gamma_coefficients*, i32) #1

declare dso_local i8* @translate_to_linear_space_ex(i32, %struct.gamma_coefficients*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
