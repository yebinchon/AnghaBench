; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_calculate_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_apds9300.c_apds9300_calculate_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apds9300_lux_ratio = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @apds9300_calculate_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apds9300_calculate_lux(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %70

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 100
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @DIV_ROUND_UP(i32 %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %16, 52
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 3150, %19
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** @apds9300_lux_ratio, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 5930
  %30 = trunc i64 %29 to i32
  %31 = call i64 @DIV_ROUND_UP_ULL(i32 %30, i32 1000)
  %32 = sub i64 %21, %31
  store i64 %32, i64* %6, align 8
  br label %67

33:                                               ; preds = %11
  %34 = load i64, i64* %7, align 8
  %35 = icmp ule i64 %34, 65
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 2290, %37
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 2910, %39
  %41 = sub nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %6, align 8
  br label %66

43:                                               ; preds = %33
  %44 = load i64, i64* %7, align 8
  %45 = icmp ule i64 %44, 80
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 1570, %47
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 1800, %49
  %51 = sub nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %6, align 8
  br label %65

53:                                               ; preds = %43
  %54 = load i64, i64* %7, align 8
  %55 = icmp ule i64 %54, 130
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 338, %57
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 260, %59
  %61 = sub nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %6, align 8
  br label %64

63:                                               ; preds = %53
  store i64 0, i64* %6, align 8
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i64, i64* %6, align 8
  %69 = udiv i64 %68, 100000
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %67, %10
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
