; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_coefficients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/color/extr_color_gamma.c_build_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gamma_coefficients = type { i8**, i8**, i8**, i8**, i8** }

@TRANSFER_FUNCTION_SRGB = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_BT709 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA22 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA24 = common dso_local global i32 0, align 4
@TRANSFER_FUNCTION_GAMMA26 = common dso_local global i32 0, align 4
@gamma_numerator01 = common dso_local global i32* null, align 8
@gamma_numerator02 = common dso_local global i32* null, align 8
@gamma_numerator03 = common dso_local global i32* null, align 8
@gamma_numerator04 = common dso_local global i32* null, align 8
@gamma_numerator05 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gamma_coefficients*, i32)* @build_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_coefficients(%struct.gamma_coefficients* %0, i32 %1) #0 {
  %3 = alloca %struct.gamma_coefficients*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.gamma_coefficients* %0, %struct.gamma_coefficients** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @TRANSFER_FUNCTION_SRGB, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %37

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TRANSFER_FUNCTION_BT709, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i64 1, i64* %6, align 8
  br label %36

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TRANSFER_FUNCTION_GAMMA22, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 2, i64* %6, align 8
  br label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TRANSFER_FUNCTION_GAMMA24, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 3, i64* %6, align 8
  br label %34

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TRANSFER_FUNCTION_GAMMA26, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i64 4, i64* %6, align 8
  br label %33

32:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %99

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %16
  br label %37

37:                                               ; preds = %36, %11
  br label %38

38:                                               ; preds = %91, %37
  %39 = load i32*, i32** @gamma_numerator01, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @dc_fixpt_from_fraction(i32 %42, i32 10000000)
  %44 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %45 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load i32*, i32** @gamma_numerator02, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @dc_fixpt_from_fraction(i32 %52, i32 1000)
  %54 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %55 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  store i8* %53, i8** %58, align 8
  %59 = load i32*, i32** @gamma_numerator03, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @dc_fixpt_from_fraction(i32 %62, i32 1000)
  %64 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %65 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %64, i32 0, i32 2
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i32*, i32** @gamma_numerator04, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @dc_fixpt_from_fraction(i32 %72, i32 1000)
  %74 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %75 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  store i8* %73, i8** %78, align 8
  %79 = load i32*, i32** @gamma_numerator05, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @dc_fixpt_from_fraction(i32 %82, i32 1000)
  %84 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %85 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  store i8* %83, i8** %88, align 8
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %38
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.gamma_coefficients*, %struct.gamma_coefficients** %3, align 8
  %94 = getelementptr inbounds %struct.gamma_coefficients, %struct.gamma_coefficients* %93, i32 0, i32 4
  %95 = load i8**, i8*** %94, align 8
  %96 = call i64 @ARRAY_SIZE(i8** %95)
  %97 = icmp ne i64 %92, %96
  br i1 %97, label %38, label %98

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %32
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i8* @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
