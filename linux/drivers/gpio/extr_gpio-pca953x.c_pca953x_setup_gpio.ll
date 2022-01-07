; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca953x_chip = type { i32, %struct.TYPE_2__*, i32, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pca953x_gpio_direction_input = common dso_local global i32 0, align 4
@pca953x_gpio_direction_output = common dso_local global i32 0, align 4
@pca953x_gpio_get_value = common dso_local global i32 0, align 4
@pca953x_gpio_set_value = common dso_local global i32 0, align 4
@pca953x_gpio_get_direction = common dso_local global i32 0, align 4
@pca953x_gpio_set_multiple = common dso_local global i32 0, align 4
@pca953x_gpio_set_config = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pca953x_chip*, i32)* @pca953x_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pca953x_setup_gpio(%struct.pca953x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.pca953x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.pca953x_chip* %0, %struct.pca953x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %6, i32 0, i32 3
  store %struct.gpio_chip* %7, %struct.gpio_chip** %5, align 8
  %8 = load i32, i32* @pca953x_gpio_direction_input, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %10 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %9, i32 0, i32 13
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @pca953x_gpio_direction_output, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %12, i32 0, i32 12
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @pca953x_gpio_get_value, align 4
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @pca953x_gpio_set_value, align 4
  %18 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @pca953x_gpio_get_direction, align 4
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @pca953x_gpio_set_multiple, align 4
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %25 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %24, i32 0, i32 8
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @pca953x_gpio_set_config, align 4
  %27 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %32 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %40 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_name(i32* %42)
  %44 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %47 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load i32, i32* @THIS_MODULE, align 4
  %53 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pca953x_chip*, %struct.pca953x_chip** %3, align 8
  %56 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
