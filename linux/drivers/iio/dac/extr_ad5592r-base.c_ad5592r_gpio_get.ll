; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ad5592r_state = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ad5592r_state*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ad5592r_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_gpio_get(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad5592r_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.ad5592r_state* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ad5592r_state* %10, %struct.ad5592r_state** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %12 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %11, i32 0, i32 2
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %15 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %23 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %27 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ad5592r_state*, i32*)*, i32 (%struct.ad5592r_state*, i32*)** %29, align 8
  %31 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %32 = call i32 %30(%struct.ad5592r_state* %31, i32* %8)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %25, %21
  %34 = load %struct.ad5592r_state*, %struct.ad5592r_state** %6, align 8
  %35 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %41, %39
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.ad5592r_state* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
