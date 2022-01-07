; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_convert_from_vtf_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_convert_from_vtf_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @convert_from_vtf_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_from_vtf_format(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %13, 8
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @BIT(i32 %15)
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 8
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  store i32 -1, i32* %11, align 4
  br label %28

28:                                               ; preds = %19, %5
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @hid_sensor_convert_exponent(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @int_pow(i32 10, i32 %37)
  %39 = mul nsw i32 %36, %38
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %65

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @split_micro_fraction(i32 %43, i32 %45, i32* %46, i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %53, %55
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %64

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %52
  br label %65

65:                                               ; preds = %64, %33
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hid_sensor_convert_exponent(i32) #1

declare dso_local i32 @int_pow(i32, i32) #1

declare dso_local i32 @split_micro_fraction(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
