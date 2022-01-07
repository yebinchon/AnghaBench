; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_conversion.c_convert_float_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/basics/extr_conversion.c_convert_float_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed31_32 = type { i32 }

@S2D13_MIN = common dso_local global i32 0, align 4
@DIVIDER = common dso_local global i32 0, align 4
@S2D13_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_float_matrix(i64* %0, %struct.fixed31_32* %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.fixed31_32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fixed31_32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.fixed31_32* %1, %struct.fixed31_32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @S2D13_MIN, align 4
  %12 = load i32, i32* @DIVIDER, align 4
  %13 = call i32 @dc_fixpt_from_fraction(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @S2D13_MAX, align 4
  %16 = load i32, i32* @DIVIDER, align 4
  %17 = call i32 @dc_fixpt_from_fraction(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %39, %3
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.fixed31_32*, %struct.fixed31_32** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %24, i64 %25
  %27 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dc_fixpt_clamp(i32 %28, i32 %30, i32 %32)
  %34 = call i64 @fixed_point_to_int_frac(i32 %33, i32 2, i32 13)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %19

42:                                               ; preds = %19
  ret void
}

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

declare dso_local i64 @fixed_point_to_int_frac(i32, i32, i32) #1

declare dso_local i32 @dc_fixpt_clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
