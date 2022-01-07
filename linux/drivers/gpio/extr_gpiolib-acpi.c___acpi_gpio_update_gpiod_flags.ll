; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c___acpi_gpio_update_gpiod_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c___acpi_gpio_update_gpiod_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOD_FLAGS_BIT_DIR_SET = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_DIR_OUT = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_DIR_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @__acpi_gpio_update_gpiod_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__acpi_gpio_update_gpiod_flags(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_SET, align 4
  %9 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_VAL, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_SET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_SET, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27, %17
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_OUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GPIOD_FLAGS_BIT_DIR_VAL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %38, %32
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32*, i32** %3, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %46, %2
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
