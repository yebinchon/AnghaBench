; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7606_spi.c_ad7606_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7606_bus_ops = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_device_id = type { i32, i32 }

@ad7616_spi_bops = common dso_local global %struct.ad7606_bus_ops zeroinitializer, align 4
@ad7606B_spi_bops = common dso_local global %struct.ad7606_bus_ops zeroinitializer, align 4
@ad7606_spi_bops = common dso_local global %struct.ad7606_bus_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7606_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7606_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.spi_device_id*, align 8
  %4 = alloca %struct.ad7606_bus_ops*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %5)
  store %struct.spi_device_id* %6, %struct.spi_device_id** %3, align 8
  %7 = load %struct.spi_device_id*, %struct.spi_device_id** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %12 [
    i32 128, label %10
    i32 129, label %11
  ]

10:                                               ; preds = %1
  store %struct.ad7606_bus_ops* @ad7616_spi_bops, %struct.ad7606_bus_ops** %4, align 8
  br label %13

11:                                               ; preds = %1
  store %struct.ad7606_bus_ops* @ad7606B_spi_bops, %struct.ad7606_bus_ops** %4, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.ad7606_bus_ops* @ad7606_spi_bops, %struct.ad7606_bus_ops** %4, align 8
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.spi_device_id*, %struct.spi_device_id** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.spi_device_id*, %struct.spi_device_id** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ad7606_bus_ops*, %struct.ad7606_bus_ops** %4, align 8
  %26 = call i32 @ad7606_probe(i32* %15, i32 %18, i32* null, i32 %21, i32 %24, %struct.ad7606_bus_ops* %25)
  ret i32 %26
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @ad7606_probe(i32*, i32, i32*, i32, i32, %struct.ad7606_bus_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
