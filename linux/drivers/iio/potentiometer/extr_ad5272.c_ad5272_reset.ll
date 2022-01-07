; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/potentiometer/extr_ad5272.c_ad5272_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5272_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@AD5272_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5272_data*)* @ad5272_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5272_reset(%struct.ad5272_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5272_data*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  store %struct.ad5272_data* %0, %struct.ad5272_data** %3, align 8
  %5 = load %struct.ad5272_data*, %struct.ad5272_data** %3, align 8
  %6 = getelementptr inbounds %struct.ad5272_data, %struct.ad5272_data* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %10 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  store %struct.gpio_desc* %10, %struct.gpio_desc** %4, align 8
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %12 = call i64 @IS_ERR(%struct.gpio_desc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.gpio_desc* %15)
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %19 = icmp ne %struct.gpio_desc* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = call i32 @udelay(i32 1)
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %23 = call i32 @gpiod_set_value(%struct.gpio_desc* %22, i32 1)
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.ad5272_data*, %struct.ad5272_data** %3, align 8
  %26 = load i32, i32* @AD5272_RESET, align 4
  %27 = call i32 @ad5272_write(%struct.ad5272_data* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %20
  %29 = call i32 @usleep_range(i32 1000, i32 2000)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i32 @ad5272_write(%struct.ad5272_data*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
