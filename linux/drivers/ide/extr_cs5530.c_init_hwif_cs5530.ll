; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cs5530.c_init_hwif_cs5530.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cs5530.c_init_hwif_cs5530.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cs5530_pio_timings = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @init_hwif_cs5530 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hwif_cs5530(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @CS5530_BASEREG(i32* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %7, 0
  %9 = call i32 @inl(i64 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @CS5530_BAD_PIO(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i32**, i32*** @cs5530_pio_timings, align 8
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 31
  %17 = and i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %14, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 0
  %25 = call i32 @outl(i32 %22, i64 %24)
  br label %26

26:                                               ; preds = %13, %1
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 8
  %29 = call i32 @inl(i64 %28)
  %30 = call i64 @CS5530_BAD_PIO(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32**, i32*** @cs5530_pio_timings, align 8
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 31
  %36 = and i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %33, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 8
  %44 = call i32 @outl(i32 %41, i64 %43)
  br label %45

45:                                               ; preds = %32, %26
  ret void
}

declare dso_local i64 @CS5530_BASEREG(i32*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i64 @CS5530_BAD_PIO(i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
