; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc32xx.c_lpc32xx_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lpc32xx.c_lpc32xx_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32 }
%struct.of_phandle_args = type { i64* }

@lpc32xx_gpiochip = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, %struct.of_phandle_args*, i64*)* @lpc32xx_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_of_xlate(%struct.gpio_chip* %0, %struct.of_phandle_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.of_phandle_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lpc32xx_gpiochip, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lpc32xx_gpiochip, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = icmp ne %struct.gpio_chip* %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %18
  %29 = load i64*, i64** %7, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.of_phandle_args*, %struct.of_phandle_args** %6, align 8
  %40 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %25
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
