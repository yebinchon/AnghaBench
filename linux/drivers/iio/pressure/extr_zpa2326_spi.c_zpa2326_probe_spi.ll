; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326_spi.c_zpa2326_probe_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326_spi.c_zpa2326_probe_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { i32 }

@zpa2326_regmap_spi_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to init registers map\00", align 1
@SPI_MODE_3 = common dso_local global i32 0, align 4
@ZPA2326_DEVICE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @zpa2326_probe_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_probe_spi(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %6, i32* @zpa2326_regmap_spi_config)
  store %struct.regmap* %7, %struct.regmap** %4, align 8
  %8 = load %struct.regmap*, %struct.regmap** %4, align 8
  %9 = call i64 @IS_ERR(%struct.regmap* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.regmap* %15)
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %1
  %18 = load i32, i32* @SPI_MODE_3, align 4
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @min(i32 %23, i32 1000000)
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 0
  store i32 8, i32* %28, align 4
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = call i32 @spi_setup(%struct.spi_device* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %48

35:                                               ; preds = %17
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 2
  %38 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %39 = call %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ZPA2326_DEVICE_ID, align 4
  %46 = load %struct.regmap*, %struct.regmap** %4, align 8
  %47 = call i32 @zpa2326_probe(i32* %37, i32 %41, i32 %44, i32 %45, %struct.regmap* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %35, %33, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @zpa2326_probe(i32*, i32, i32, i32, %struct.regmap*) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
