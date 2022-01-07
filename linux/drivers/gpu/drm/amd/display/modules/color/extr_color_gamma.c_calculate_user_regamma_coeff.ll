; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_user_regamma_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_calculate_user_regamma_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_x_point = type { i32 }
%struct.dc_transfer_func = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8**, i8** }
%struct.regamma_lut = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.gamma_coefficients = type { i8**, i8**, i8**, i8**, i8** }

@coordinates_x = common dso_local global %struct.hw_x_point* null, align 8
@dc_fixpt_zero = common dso_local global i8* null, align 8
@MAX_HW_POINTS = common dso_local global i32 0, align 4
@TF_TYPE_DISTRIBUTED_POINTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculate_user_regamma_coeff(%struct.dc_transfer_func* %0, %struct.regamma_lut* %1) #0 {
  %3 = alloca %struct.dc_transfer_func*, align 8
  %4 = alloca %struct.regamma_lut*, align 8
  %5 = alloca %struct.gamma_coefficients, align 8
  %6 = alloca %struct.hw_x_point*, align 8
  %7 = alloca i32, align 4
  store %struct.dc_transfer_func* %0, %struct.dc_transfer_func** %3, align 8
  store %struct.regamma_lut* %1, %struct.regamma_lut** %4, align 8
  %8 = load %struct.hw_x_point*, %struct.hw_x_point** @coordinates_x, align 8
  store %struct.hw_x_point* %8, %struct.hw_x_point** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %82, %2
  %10 = load %struct.regamma_lut*, %struct.regamma_lut** %4, align 8
  %11 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @dc_fixpt_from_fraction(i32 %17, i32 10000000)
  %19 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %5, i32 0, i32 4
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %18, i8** %23, align 8
  %24 = load %struct.regamma_lut*, %struct.regamma_lut** %4, align 8
  %25 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @dc_fixpt_from_fraction(i32 %31, i32 1000)
  %33 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %5, i32 0, i32 3
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %32, i8** %37, align 8
  %38 = load %struct.regamma_lut*, %struct.regamma_lut** %4, align 8
  %39 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @dc_fixpt_from_fraction(i32 %45, i32 1000)
  %47 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %5, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %46, i8** %51, align 8
  %52 = load %struct.regamma_lut*, %struct.regamma_lut** %4, align 8
  %53 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @dc_fixpt_from_fraction(i32 %59, i32 1000)
  %61 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %5, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %60, i8** %65, align 8
  %66 = load %struct.regamma_lut*, %struct.regamma_lut** %4, align 8
  %67 = getelementptr inbounds %struct.regamma_lut, %struct.regamma_lut* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @dc_fixpt_from_fraction(i32 %73, i32 1000)
  %75 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %5, i32 0, i32 0
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %74, i8** %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %9
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %9, label %85

85:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %89, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 32
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = load i8*, i8** @dc_fixpt_zero, align 8
  %91 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %92 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %90, i8** %97, align 8
  %98 = load i8*, i8** @dc_fixpt_zero, align 8
  %99 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %100 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  store i8* %98, i8** %105, align 8
  %106 = load i8*, i8** @dc_fixpt_zero, align 8
  %107 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %108 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %106, i8** %113, align 8
  %114 = load %struct.hw_x_point*, %struct.hw_x_point** %6, align 8
  %115 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %114, i32 1
  store %struct.hw_x_point* %115, %struct.hw_x_point** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %86

118:                                              ; preds = %86
  br label %119

119:                                              ; preds = %124, %118
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @MAX_HW_POINTS, align 4
  %122 = add nsw i32 %121, 1
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %119
  %125 = load %struct.hw_x_point*, %struct.hw_x_point** %6, align 8
  %126 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @translate_from_linear_space_ex(i32 %127, %struct.gamma_coefficients* %5, i32 0)
  %129 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %130 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = load i8**, i8*** %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  store i8* %128, i8** %135, align 8
  %136 = load %struct.hw_x_point*, %struct.hw_x_point** %6, align 8
  %137 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @translate_from_linear_space_ex(i32 %138, %struct.gamma_coefficients* %5, i32 1)
  %140 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %141 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* %139, i8** %146, align 8
  %147 = load %struct.hw_x_point*, %struct.hw_x_point** %6, align 8
  %148 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @translate_from_linear_space_ex(i32 %149, %struct.gamma_coefficients* %5, i32 2)
  %151 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %152 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  store i8* %150, i8** %157, align 8
  %158 = load %struct.hw_x_point*, %struct.hw_x_point** %6, align 8
  %159 = getelementptr inbounds %struct.hw_x_point, %struct.hw_x_point* %158, i32 1
  store %struct.hw_x_point* %159, %struct.hw_x_point** %6, align 8
  %160 = load i32, i32* %7, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %7, align 4
  br label %119

162:                                              ; preds = %119
  %163 = load i32, i32* @MAX_HW_POINTS, align 4
  %164 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %165 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %164, i32 0, i32 1
  %166 = call i32 @build_new_custom_resulted_curve(i32 %163, %struct.TYPE_4__* %165)
  %167 = load i32, i32* @TF_TYPE_DISTRIBUTED_POINTS, align 4
  %168 = load %struct.dc_transfer_func*, %struct.dc_transfer_func** %3, align 8
  %169 = getelementptr inbounds %struct.dc_transfer_func, %struct.dc_transfer_func* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  ret i32 1
}

declare dso_local i8* @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i8* @translate_from_linear_space_ex(i32, %struct.gamma_coefficients*, i32) #1

declare dso_local i32 @build_new_custom_resulted_curve(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
