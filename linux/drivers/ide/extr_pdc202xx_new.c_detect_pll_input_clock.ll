; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_detect_pll_input_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_pdc202xx_new.c_detect_pll_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"scr1[%02X]\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"start[%ld] end[%ld]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @detect_pll_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @detect_pll_input_clock(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @read_counter(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = call i32 (...) @ktime_get()
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* %2, align 8
  %14 = add i64 %13, 1
  %15 = call i32 @outb(i32 1, i64 %14)
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, 3
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, 64
  %24 = load i64, i64* %2, align 8
  %25 = add i64 %24, 3
  %26 = call i32 @outb(i32 %23, i64 %25)
  %27 = call i32 @mdelay(i32 10)
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @read_counter(i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = call i32 (...) @ktime_get()
  store i32 %30, i32* %4, align 4
  %31 = load i64, i64* %2, align 8
  %32 = add i64 %31, 1
  %33 = call i32 @outb(i32 1, i64 %32)
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 3
  %36 = call i32 @inb(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -65
  %42 = load i64, i64* %2, align 8
  %43 = add i64 %42, 3
  %44 = call i32 @outb(i32 %41, i64 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @ktime_us_delta(i32 %45, i32 %46)
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub nsw i64 %48, %49
  %51 = and i64 %50, 1073741823
  %52 = sdiv i64 %51, 10
  %53 = load i64, i64* %8, align 8
  %54 = sdiv i64 10000000, %53
  %55 = mul nsw i64 %52, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 (i8*, i64, ...) @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i64, i64* %7, align 8
  ret i64 %59
}

declare dso_local i64 @read_counter(i64) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @DBG(i8*, i64, ...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
