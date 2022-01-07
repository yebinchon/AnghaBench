; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_pwm_freq_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_pwm_freq_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pwm_freq_cksel0 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @pwm_freq_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_freq_to_reg(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64*, i64** @pwm_freq_cksel0, align 8
  %13 = load i64*, i64** @pwm_freq_cksel0, align 8
  %14 = call i32 @ARRAY_SIZE(i64* %13)
  %15 = call i64 @find_closest_descending(i64 %11, i64* %12, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %16, 375
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load i64*, i64** @pwm_freq_cksel0, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 1000
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 48000
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 384, i32 256
  %31 = sdiv i32 %26, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @DIV_ROUND_CLOSEST(i64 %33, i64 %34)
  %36 = call i64 @clamp_val(i32 %35, i32 1, i32 128)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = udiv i64 %37, %38
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %40, 1
  %42 = or i64 128, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @abs(i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub i64 %47, %48
  %50 = call i64 @abs(i64 %49)
  %51 = icmp sgt i64 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %20
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %56

54:                                               ; preds = %20
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %54, %52, %18
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @find_closest_descending(i64, i64*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
