; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_calc_polynomial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_calc_polynomial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_coeff = type { i64, i32 }

@SI1133_LUX_OUTPUT_FRACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, %struct.si1133_coeff*)* @si1133_calc_polynomial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_calc_polynomial(i32 %0, i32 %1, i64 %2, i64 %3, %struct.si1133_coeff* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.si1133_coeff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.si1133_coeff* %4, %struct.si1133_coeff** %10, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %16

16:                                               ; preds = %67, %5
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  %21 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %22 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %14, align 4
  br label %27

26:                                               ; preds = %20
  store i32 1, i32* %14, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %29 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @si1133_get_x_order(i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %33 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @si1133_get_y_order(i64 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = load i64, i64* %12, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %44 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = load i32, i32* @SI1133_LUX_OUTPUT_FRACTION, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %15, align 4
  br label %64

51:                                               ; preds = %38, %27
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %59 = call i64 @si1133_calculate_output(i32 %52, i32 %53, i64 %54, i64 %55, i64 %56, i32 %57, %struct.si1133_coeff* %58)
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %51, %41
  %65 = load %struct.si1133_coeff*, %struct.si1133_coeff** %10, align 8
  %66 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %65, i32 1
  store %struct.si1133_coeff* %66, %struct.si1133_coeff** %10, align 8
  br label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %13, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %13, align 8
  br label %16

70:                                               ; preds = %16
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @abs(i32 %71) #3
  ret i32 %72
}

declare dso_local i64 @si1133_get_x_order(i64) #1

declare dso_local i64 @si1133_get_y_order(i64) #1

declare dso_local i64 @si1133_calculate_output(i32, i32, i64, i64, i64, i32, %struct.si1133_coeff*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
