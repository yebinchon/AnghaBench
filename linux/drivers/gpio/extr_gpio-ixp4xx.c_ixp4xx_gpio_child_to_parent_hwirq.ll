; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_child_to_parent_hwirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ixp4xx.c_ixp4xx_gpio_child_to_parent_hwirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32, i32*, i32*)* @ixp4xx_gpio_child_to_parent_hwirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_gpio_child_to_parent_hwirq(%struct.gpio_chip* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %13 = load i32*, i32** %11, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32*, i32** %10, align 8
  store i32 6, i32* %17, align 4
  store i32 0, i32* %6, align 4
  br label %36

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  store i32 7, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp uge i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %27, 12
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = add i32 %30, 17
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  store i32 0, i32* %6, align 4
  br label %36

33:                                               ; preds = %26, %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %29, %21, %16
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
