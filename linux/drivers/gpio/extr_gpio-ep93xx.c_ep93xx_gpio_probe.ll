; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ep93xx.c_ep93xx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_gpio_bank = type { i32 }
%struct.platform_device = type { i32 }
%struct.ep93xx_gpio = type { %struct.gpio_chip*, i32 }
%struct.gpio_chip = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ep93xx_gpio_banks = common dso_local global %struct.ep93xx_gpio_bank* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to add gpio bank %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.ep93xx_gpio_bank*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ep93xx_gpio* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.ep93xx_gpio* %11, %struct.ep93xx_gpio** %4, align 8
  %12 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %13 = icmp ne %struct.ep93xx_gpio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %18, i32 0)
  %20 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %29 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %67

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ep93xx_gpio_bank*, %struct.ep93xx_gpio_bank** @ep93xx_gpio_banks, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.ep93xx_gpio_bank* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %40 = getelementptr inbounds %struct.ep93xx_gpio, %struct.ep93xx_gpio* %39, i32 0, i32 0
  %41 = load %struct.gpio_chip*, %struct.gpio_chip** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %41, i64 %43
  store %struct.gpio_chip* %44, %struct.gpio_chip** %6, align 8
  %45 = load %struct.ep93xx_gpio_bank*, %struct.ep93xx_gpio_bank** @ep93xx_gpio_banks, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ep93xx_gpio_bank, %struct.ep93xx_gpio_bank* %45, i64 %47
  store %struct.ep93xx_gpio_bank* %48, %struct.ep93xx_gpio_bank** %7, align 8
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.ep93xx_gpio*, %struct.ep93xx_gpio** %4, align 8
  %52 = load %struct.ep93xx_gpio_bank*, %struct.ep93xx_gpio_bank** %7, align 8
  %53 = call i64 @ep93xx_gpio_add_bank(%struct.gpio_chip* %49, %struct.platform_device* %50, %struct.ep93xx_gpio* %51, %struct.ep93xx_gpio_bank* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %38
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.ep93xx_gpio_bank*, %struct.ep93xx_gpio_bank** %7, align 8
  %59 = getelementptr inbounds %struct.ep93xx_gpio_bank, %struct.ep93xx_gpio_bank* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %55, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %33

66:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %27, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.ep93xx_gpio* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ep93xx_gpio_bank*) #1

declare dso_local i64 @ep93xx_gpio_add_bank(%struct.gpio_chip*, %struct.platform_device*, %struct.ep93xx_gpio*, %struct.ep93xx_gpio_bank*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
