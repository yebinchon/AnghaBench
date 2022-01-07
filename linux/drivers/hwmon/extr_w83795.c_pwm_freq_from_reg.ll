; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_pwm_freq_from_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_pwm_freq_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pwm_freq_cksel0 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pwm_freq_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_freq_from_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 1000
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 48000
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 384, i32 256
  %17 = sdiv i32 %12, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 127
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %19, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32*, i32** @pwm_freq_cksel0, align 8
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
