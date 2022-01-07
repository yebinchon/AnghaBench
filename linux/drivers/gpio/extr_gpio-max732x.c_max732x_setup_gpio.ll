; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max732x.c_max732x_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max732x_chip = type { i32, i32, i32, %struct.TYPE_2__*, %struct.gpio_chip }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gpio_chip = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.i2c_device_id = type { i64 }

@max732x_features = common dso_local global i32* null, align 8
@max732x_gpio_direction_input = common dso_local global i32 0, align 4
@max732x_gpio_direction_output = common dso_local global i32 0, align 4
@max732x_gpio_set_value = common dso_local global i32 0, align 4
@max732x_gpio_set_multiple = common dso_local global i32 0, align 4
@max732x_gpio_get_value = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max732x_chip*, %struct.i2c_device_id*, i32)* @max732x_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max732x_setup_gpio(%struct.max732x_chip* %0, %struct.i2c_device_id* %1, i32 %2) #0 {
  %4 = alloca %struct.max732x_chip*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max732x_chip* %0, %struct.max732x_chip** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %13 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %12, i32 0, i32 4
  store %struct.gpio_chip* %13, %struct.gpio_chip** %7, align 8
  %14 = load i32*, i32** @max732x_features, align 8
  %15 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %64, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 1, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  switch i32 %27, label %51 [
    i32 128, label %28
    i32 130, label %34
    i32 129, label %40
  ]

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %31 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %52

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %37 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %23
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %43 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %48 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %52

51:                                               ; preds = %23
  br label %64

52:                                               ; preds = %40, %34, %28
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 8
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %58 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %51
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 2
  store i32 %68, i32* %8, align 4
  br label %20

69:                                               ; preds = %20
  %70 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %71 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @max732x_gpio_direction_input, align 4
  %76 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %77 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %80 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load i32, i32* @max732x_gpio_direction_output, align 4
  %85 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %86 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @max732x_gpio_set_value, align 4
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %89 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @max732x_gpio_set_multiple, align 4
  %91 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %92 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @max732x_gpio_get_value, align 4
  %95 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %96 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %98 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %101 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %104 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %106 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %105, i32 0, i32 3
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %111 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.max732x_chip*, %struct.max732x_chip** %4, align 8
  %113 = getelementptr inbounds %struct.max732x_chip, %struct.max732x_chip* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %117 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %116, i32 0, i32 4
  store i32* %115, i32** %117, align 8
  %118 = load i32, i32* @THIS_MODULE, align 4
  %119 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %120 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
