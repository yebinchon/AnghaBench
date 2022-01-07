; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-ltc4306.c_ltc4306_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4306 = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i64, i32 }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ltc4306_gpio_get_direction = common dso_local global i32 0, align 4
@ltc4306_gpio_direction_input = common dso_local global i32 0, align 4
@ltc4306_gpio_direction_output = common dso_local global i32 0, align 4
@ltc4306_gpio_get = common dso_local global i32 0, align 4
@ltc4306_gpio_set = common dso_local global i32 0, align 4
@ltc4306_gpio_set_config = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@LTC_REG_MODE = common dso_local global i32 0, align 4
@LTC_GPIO_ALL_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc4306*)* @ltc4306_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4306_gpio_init(%struct.ltc4306* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltc4306*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ltc4306* %0, %struct.ltc4306** %3, align 8
  %5 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %6 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.device* @regmap_get_device(i32 %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %10 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_name(%struct.device* %17)
  %19 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %20 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 11
  store i32 %18, i32* %21, align 8
  %22 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %23 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %26 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %31 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 10
  store i64 %29, i64* %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %35 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %38 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @ltc4306_gpio_get_direction, align 4
  %41 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %42 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @ltc4306_gpio_direction_input, align 4
  %45 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %46 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @ltc4306_gpio_direction_output, align 4
  %49 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %50 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @ltc4306_gpio_get, align 4
  %53 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %54 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @ltc4306_gpio_set, align 4
  %57 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %58 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @ltc4306_gpio_set_config, align 4
  %61 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %62 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* @THIS_MODULE, align 4
  %65 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %66 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %69 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @LTC_REG_MODE, align 4
  %72 = load i32, i32* @LTC_GPIO_ALL_INPUT, align 4
  %73 = call i32 @regmap_write(i32 %70, i32 %71, i32 %72)
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %76 = getelementptr inbounds %struct.ltc4306, %struct.ltc4306* %75, i32 0, i32 0
  %77 = load %struct.ltc4306*, %struct.ltc4306** %3, align 8
  %78 = call i32 @devm_gpiochip_add_data(%struct.device* %74, %struct.TYPE_4__* %76, %struct.ltc4306* %77)
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %16, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_4__*, %struct.ltc4306*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
