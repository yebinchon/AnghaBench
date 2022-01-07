; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_misr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_misr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @misr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 1
  %14 = xor i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 1
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 2
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 5
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 7
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 11
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 15
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %44, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, -2
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = or i32 %48, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
