; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_write_program_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp5562.c_lp5562_write_program_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp55xx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp55xx_chip*, i64, i64*, i32)* @lp5562_write_program_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp5562_write_program_memory(%struct.lp55xx_chip* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.lp55xx_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lp55xx_chip* %0, %struct.lp55xx_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64*, i64** %7, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %50

16:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i64*, i64** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @lp55xx_write(%struct.lp55xx_chip* %22, i64 %26, i64 %31)
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %17

36:                                               ; preds = %17
  %37 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @lp55xx_write(%struct.lp55xx_chip* %37, i64 %41, i64 0)
  %43 = load %struct.lp55xx_chip*, %struct.lp55xx_chip** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = add nsw i64 %47, 1
  %49 = call i32 @lp55xx_write(%struct.lp55xx_chip* %43, i64 %48, i64 0)
  br label %50

50:                                               ; preds = %36, %15
  ret void
}

declare dso_local i32 @lp55xx_write(%struct.lp55xx_chip*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
