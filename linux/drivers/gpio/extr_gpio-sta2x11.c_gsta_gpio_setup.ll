; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-sta2x11.c_gsta_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsta_gpio = type { i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@gsta_gpio_setup.gpio_base = internal global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@gsta_gpio_direction_input = common dso_local global i32 0, align 4
@gsta_gpio_get = common dso_local global i32 0, align 4
@gsta_gpio_direction_output = common dso_local global i32 0, align 4
@gsta_gpio_set = common dso_local global i32 0, align 4
@GSTA_NR_GPIO = common dso_local global i32 0, align 4
@gsta_gpio_to_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsta_gpio*)* @gsta_gpio_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsta_gpio_setup(%struct.gsta_gpio* %0) #0 {
  %2 = alloca %struct.gsta_gpio*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  store %struct.gsta_gpio* %0, %struct.gsta_gpio** %2, align 8
  %4 = load %struct.gsta_gpio*, %struct.gsta_gpio** %2, align 8
  %5 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %4, i32 0, i32 1
  store %struct.gpio_chip* %5, %struct.gpio_chip** %3, align 8
  %6 = load %struct.gsta_gpio*, %struct.gsta_gpio** %2, align 8
  %7 = getelementptr inbounds %struct.gsta_gpio, %struct.gsta_gpio* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dev_name(i32 %8)
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @gsta_gpio_direction_input, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @gsta_gpio_get, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @gsta_gpio_direction_output, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @gsta_gpio_set, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 4
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @gsta_gpio_setup.gpio_base, align 4
  %30 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %31 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @GSTA_NR_GPIO, align 4
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %36 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @gsta_gpio_to_irq, align 4
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @gsta_gpio_setup.gpio_base, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %1
  store i32 -1, i32* @gsta_gpio_setup.gpio_base, align 4
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
