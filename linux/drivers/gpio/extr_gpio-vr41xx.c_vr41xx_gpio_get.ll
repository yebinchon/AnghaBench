; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_vr41xx_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-vr41xx.c_vr41xx_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GIUPIODL = common dso_local global i32 0, align 4
@GIUPIODH = common dso_local global i32 0, align 4
@GIUPODATL = common dso_local global i32 0, align 4
@GIUPODATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @vr41xx_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr41xx_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp uge i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* @GIUPIODL, align 4
  %21 = call i32 @giu_read(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  store i32 %23, i32* %7, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 32
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @GIUPIODH, align 4
  %29 = call i32 @giu_read(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %30, 16
  %32 = shl i32 1, %31
  store i32 %32, i32* %7, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %34, 48
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @GIUPODATL, align 4
  %38 = call i32 @giu_read(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sub i32 %39, 32
  %41 = shl i32 1, %40
  store i32 %41, i32* %7, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @GIUPODATH, align 4
  %44 = call i32 @giu_read(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub i32 %45, 48
  %47 = shl i32 1, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @giu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
