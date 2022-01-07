; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_spi.c_bmg160_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_spi.c_bmg160_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.regmap = type { i32 }
%struct.spi_device_id = type { i32 }

@bmg160_regmap_spi_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register spi regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bmg160_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.spi_device_id*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %6)
  store %struct.spi_device_id* %7, %struct.spi_device_id** %5, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.regmap* @devm_regmap_init_spi(%struct.spi_device* %8, i32* @bmg160_regmap_spi_conf)
  store %struct.regmap* %9, %struct.regmap** %4, align 8
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = call i64 @IS_ERR(%struct.regmap* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load %struct.regmap*, %struct.regmap** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.regmap* %16)
  %18 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %4, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  store i32 %20, i32* %2, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 1
  %24 = load %struct.regmap*, %struct.regmap** %4, align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.spi_device_id*, %struct.spi_device_id** %5, align 8
  %29 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bmg160_core_probe(i32* %23, %struct.regmap* %24, i32 %27, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.regmap* @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bmg160_core_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
