; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_get_gpio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_get_gpio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { %struct.gpio_desc**, %struct.TYPE_2__* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to get power GPIO %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.surface3_ts_data*)* @surface3_spi_get_gpio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_spi_get_gpio_config(%struct.surface3_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  %8 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %9 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %19 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.device* %16, i32* null, i32 %17, i32 %18)
  store %struct.gpio_desc* %19, %struct.gpio_desc** %6, align 8
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %21 = call i64 @IS_ERR(%struct.gpio_desc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %15
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.gpio_desc* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %49

37:                                               ; preds = %15
  %38 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %39 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %40 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %39, i32 0, i32 0
  %41 = load %struct.gpio_desc**, %struct.gpio_desc*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %41, i64 %43
  store %struct.gpio_desc* %38, %struct.gpio_desc** %44, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
