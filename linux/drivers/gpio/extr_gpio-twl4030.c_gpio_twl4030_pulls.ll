; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_pulls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-twl4030.c_gpio_twl4030_pulls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWL4030_MODULE_GPIO = common dso_local global i32 0, align 4
@REG_GPIOPUPDCTR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @gpio_twl4030_pulls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_twl4030_pulls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %9, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = add i32 %23, 1
  %25 = shl i32 1, %24
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  br label %40

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = add i32 %34, 0
  %36 = shl i32 1, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 2
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load i32, i32* @TWL4030_MODULE_GPIO, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %57 = load i32, i32* @REG_GPIOPUPDCTR1, align 4
  %58 = call i32 @twl_i2c_write(i32 %55, i32* %56, i32 %57, i32 5)
  ret i32 %58
}

declare dso_local i32 @twl_i2c_write(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
