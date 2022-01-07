; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_calculate_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_calculate_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_coeff = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, %struct.si1133_coeff*)* @si1133_calculate_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_calculate_output(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.si1133_coeff* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.si1133_coeff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.si1133_coeff* %6, %struct.si1133_coeff** %14, align 8
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %20 = load %struct.si1133_coeff*, %struct.si1133_coeff** %14, align 8
  %21 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = xor i32 %26, 255
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %7
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.si1133_coeff*, %struct.si1133_coeff** %14, align 8
  %38 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @si1133_calculate_polynomial_inner(i32 %35, i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %44, %34
  br label %47

47:                                               ; preds = %46, %7
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.si1133_coeff*, %struct.si1133_coeff** %14, align 8
  %54 = getelementptr inbounds %struct.si1133_coeff, %struct.si1133_coeff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @si1133_calculate_polynomial_inner(i32 %51, i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %18, align 4
  store i32 %61, i32* %19, align 4
  br label %62

62:                                               ; preds = %60, %50
  br label %63

63:                                               ; preds = %62, %47
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %16, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %19, align 4
  %72 = mul nsw i32 %70, %71
  ret i32 %72
}

declare dso_local i32 @si1133_calculate_polynomial_inner(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
