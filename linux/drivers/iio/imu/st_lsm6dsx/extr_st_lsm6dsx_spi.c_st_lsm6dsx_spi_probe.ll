; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_spi.c_st_lsm6dsx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_spi.c_st_lsm6dsx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_device_id = type { i32 }
%struct.regmap = type { i32 }

@st_lsm6dsx_spi_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register spi regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st_lsm6dsx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %7)
  store %struct.spi_device_id* %8, %struct.spi_device_id** %4, align 8
  %9 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %12, i32* @st_lsm6dsx_spi_regmap_config)
  store %struct.regmap* %13, %struct.regmap** %6, align 8
  %14 = load %struct.regmap*, %struct.regmap** %6, align 8
  %15 = call i64 @IS_ERR(%struct.regmap* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.regmap* %20)
  %22 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.regmap* %23)
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 1
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = call i32 @st_lsm6dsx_probe(i32* %27, i32 %30, i32 %31, %struct.regmap* %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @st_lsm6dsx_probe(i32*, i32, i32, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
