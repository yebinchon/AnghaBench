; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max3191x.c_max3191x_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.max3191x_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAX3191X_NGPIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @max3191x_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3191x_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.max3191x_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = call %struct.max3191x_chip* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.max3191x_chip* %11, %struct.max3191x_chip** %5, align 8
  %12 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %13 = call i32 @max3191x_wordlen(%struct.max3191x_chip* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %15 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %18 = call i32 @max3191x_readout_locked(%struct.max3191x_chip* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAX3191X_NGPIO, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @max3191x_chip_is_faulting(%struct.max3191x_chip* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %51

33:                                               ; preds = %22
  %34 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %35 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MAX3191X_NGPIO, align 4
  %48 = urem i32 %46, %47
  %49 = lshr i32 %45, %48
  %50 = and i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %33, %30, %21
  %52 = load %struct.max3191x_chip*, %struct.max3191x_chip** %5, align 8
  %53 = getelementptr inbounds %struct.max3191x_chip, %struct.max3191x_chip* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.max3191x_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @max3191x_wordlen(%struct.max3191x_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max3191x_readout_locked(%struct.max3191x_chip*) #1

declare dso_local i64 @max3191x_chip_is_faulting(%struct.max3191x_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
