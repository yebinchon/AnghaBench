; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-lynxpoint.c_lp_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.lp_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LP_CONFIG1 = common dso_local global i32 0, align 4
@LP_CONFIG2 = common dso_local global i32 0, align 4
@LP_ACPI_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"gpio %d reserved for ACPI\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@USE_SEL_BIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPINDIS_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @lp_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp_gpio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.lp_gpio* %11, %struct.lp_gpio** %6, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LP_CONFIG1, align 4
  %15 = call i64 @lp_gpio_reg(%struct.gpio_chip* %12, i32 %13, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LP_CONFIG2, align 4
  %19 = call i64 @lp_gpio_reg(%struct.gpio_chip* %16, i32 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @LP_ACPI_OWNED, align 4
  %23 = call i64 @lp_gpio_reg(%struct.gpio_chip* %20, i32 %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.lp_gpio*, %struct.lp_gpio** %6, align 8
  %25 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get(i32* %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @inl(i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = urem i32 %31, 32
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %2
  %37 = load %struct.lp_gpio*, %struct.lp_gpio** %6, align 8
  %38 = getelementptr inbounds %struct.lp_gpio, %struct.lp_gpio* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %2
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @inl(i64 %46)
  %48 = load i32, i32* @USE_SEL_BIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %45
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @inl(i64 %55)
  %57 = load i32, i32* @GPINDIS_BIT, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @outl(i32 %59, i64 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %51, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.lp_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @lp_gpio_reg(%struct.gpio_chip*, i32, i32) #1

declare dso_local i32 @pm_runtime_get(i32*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
