; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-adp5588.c_adp5588_gpio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp5588_gpio_platform_data = type { i32 (%struct.i2c_client*, i32, i32, i32)*, i32 }
%struct.adp5588_gpio = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"teardown failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp5588_gpio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5588_gpio_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adp5588_gpio_platform_data*, align 8
  %5 = alloca %struct.adp5588_gpio*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = call %struct.adp5588_gpio_platform_data* @dev_get_platdata(i32* %8)
  store %struct.adp5588_gpio_platform_data* %9, %struct.adp5588_gpio_platform_data** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.adp5588_gpio* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.adp5588_gpio* %11, %struct.adp5588_gpio** %5, align 8
  %12 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %13 = icmp ne %struct.adp5588_gpio_platform_data* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %1
  %15 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %15, i32 0, i32 0
  %17 = load i32 (%struct.i2c_client*, i32, i32, i32)*, i32 (%struct.i2c_client*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.i2c_client*, i32, i32, i32)* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %21 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %20, i32 0, i32 0
  %22 = load i32 (%struct.i2c_client*, i32, i32, i32)*, i32 (%struct.i2c_client*, i32, i32, i32)** %21, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %24 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %25 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %29 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.adp5588_gpio_platform_data*, %struct.adp5588_gpio_platform_data** %4, align 8
  %33 = getelementptr inbounds %struct.adp5588_gpio_platform_data, %struct.adp5588_gpio_platform_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %22(%struct.i2c_client* %23, i32 %27, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %61

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %14, %1
  %46 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %47 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %54 = getelementptr inbounds %struct.adp5588_gpio, %struct.adp5588_gpio* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.adp5588_gpio*, %struct.adp5588_gpio** %5, align 8
  %59 = call i32 @free_irq(i64 %57, %struct.adp5588_gpio* %58)
  br label %60

60:                                               ; preds = %52, %45
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %38
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.adp5588_gpio_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.adp5588_gpio* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.adp5588_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
