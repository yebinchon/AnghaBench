; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-da9052.c_da9052_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.da9052_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9052_GPIO_0_1_REG = common dso_local global i64 0, align 8
@DA9052_GPIO_ODD_PORT_MODE = common dso_local global i32 0, align 4
@DA9052_GPIO_ODD_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to updated gpio odd reg,%d\00", align 1
@DA9052_GPIO_EVEN_PORT_MODE = common dso_local global i32 0, align 4
@DA9052_GPIO_EVEN_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to updated gpio even reg,%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @da9052_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9052_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.da9052_gpio*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.da9052_gpio* %10, %struct.da9052_gpio** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @da9052_gpio_port_odd(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %16 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = lshr i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i32, i32* @DA9052_GPIO_ODD_PORT_MODE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DA9052_GPIO_ODD_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = call i32 @da9052_reg_update(%struct.TYPE_2__* %17, i64 %22, i32 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %32 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %14
  br label %64

39:                                               ; preds = %3
  %40 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %41 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = lshr i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @DA9052_GPIO_0_1_REG, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @DA9052_GPIO_EVEN_PORT_MODE, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DA9052_GPIO_EVEN_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @da9052_reg_update(%struct.TYPE_2__* %42, i64 %47, i32 %48, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %39
  %56 = load %struct.da9052_gpio*, %struct.da9052_gpio** %7, align 8
  %57 = getelementptr inbounds %struct.da9052_gpio, %struct.da9052_gpio* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %55, %39
  br label %64

64:                                               ; preds = %63, %38
  ret void
}

declare dso_local %struct.da9052_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @da9052_gpio_port_odd(i32) #1

declare dso_local i32 @da9052_reg_update(%struct.TYPE_2__*, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
