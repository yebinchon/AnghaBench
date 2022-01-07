; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mc9s08dz60.c_mc9s08dz60_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mc9s08dz60.c_mc9s08dz60_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.mc9s08dz60 = type { %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GPIO_NUM = common dso_local global i32 0, align 4
@mc9s08dz60_get_value = common dso_local global i32 0, align 4
@mc9s08dz60_set_value = common dso_local global i32 0, align 4
@mc9s08dz60_direction_output = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mc9s08dz60_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc9s08dz60_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mc9s08dz60*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mc9s08dz60* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.mc9s08dz60* %10, %struct.mc9s08dz60** %6, align 8
  %11 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %12 = icmp ne %struct.mc9s08dz60* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %21 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  store i32 %19, i32* %22, align 8
  %23 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %24 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %29 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 7
  store i32* %27, i32** %30, align 8
  %31 = load i32, i32* @THIS_MODULE, align 4
  %32 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %33 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 6
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @GPIO_NUM, align 4
  %36 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %37 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 5
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %40 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* @mc9s08dz60_get_value, align 4
  %43 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %44 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @mc9s08dz60_set_value, align 4
  %47 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %48 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @mc9s08dz60_direction_output, align 4
  %51 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %52 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %56 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %55, i32 0, i32 1
  store %struct.i2c_client* %54, %struct.i2c_client** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %59 = call i32 @i2c_set_clientdata(%struct.i2c_client* %57, %struct.mc9s08dz60* %58)
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %63 = getelementptr inbounds %struct.mc9s08dz60, %struct.mc9s08dz60* %62, i32 0, i32 0
  %64 = load %struct.mc9s08dz60*, %struct.mc9s08dz60** %6, align 8
  %65 = call i32 @devm_gpiochip_add_data(i32* %61, %struct.TYPE_2__* %63, %struct.mc9s08dz60* %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %16, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.mc9s08dz60* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mc9s08dz60*) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.mc9s08dz60*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
