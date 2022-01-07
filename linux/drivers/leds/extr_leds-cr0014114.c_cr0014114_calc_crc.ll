; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_calc_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-cr0014114.c_cr0014114_calc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CR_SET_BRIGHTNESS = common dso_local global i32 0, align 4
@CR_INIT_REENUMERATE = common dso_local global i32 0, align 4
@CR_NEXT_REENUMERATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @cr0014114_calc_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cr0014114_calc_crc(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 %9, 1
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32*, i32** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %7

22:                                               ; preds = %7
  %23 = call i32 @BIT(i32 7)
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CR_SET_BRIGHTNESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CR_INIT_REENUMERATE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CR_NEXT_REENUMERATE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29, %22
  store i32 254, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
