; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_spi.c_hmc5843_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_hmc5843_spi.c_hmc5843_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.spi_device_id = type { i32, i32 }

@SPI_MODE_3 = common dso_local global i32 0, align 4
@hmc5843_spi_regmap_config = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @hmc5843_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmc5843_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.spi_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %7)
  store %struct.spi_device_id* %8, %struct.spi_device_id** %6, align 8
  %9 = load i32, i32* @SPI_MODE_3, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  store i32 8000000, i32* %13, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  store i32 8, i32* %15, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = call i32 @spi_setup(%struct.spi_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %23, i32* @hmc5843_spi_regmap_config)
  store %struct.regmap* %24, %struct.regmap** %5, align 8
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = call i64 @IS_ERR(%struct.regmap* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = call i32 @PTR_ERR(%struct.regmap* %29)
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %32, i32 0, i32 2
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %36 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.spi_device_id*, %struct.spi_device_id** %6, align 8
  %39 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hmc5843_common_probe(i32* %33, %struct.regmap* %34, i32 %37, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %31, %28, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @hmc5843_common_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
