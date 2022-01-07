; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_convert_to_vtf_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/hid-sensors/extr_hid-sensor-attributes.c_convert_to_vtf_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @convert_to_vtf_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_vtf_format(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i32 -1, i32* %11, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @hid_sensor_convert_exponent(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 6, %24
  %26 = call i32 @int_pow(i32 10, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @abs(i32 %27) #3
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @int_pow(i32 10, i32 %30)
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @abs(i32 %33) #3
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  br label %46

39:                                               ; preds = %18
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @int_pow(i32 10, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @abs(i32 %42) #3
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %39, %23
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 8
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %49, %46
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @hid_sensor_convert_exponent(i32) #1

declare dso_local i32 @int_pow(i32, i32) #1

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
