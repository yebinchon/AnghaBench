; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_spi.c_st_sensors_is_spi_3_wire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_spi.c_st_sensors_is_spi_3_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.st_sensors_platform_data = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"spi-3wire\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @st_sensors_is_spi_3_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_sensors_is_spi_3_wire(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.st_sensors_platform_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.st_sensors_platform_data*
  store %struct.st_sensors_platform_data* %14, %struct.st_sensors_platform_data** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i64 @of_property_read_bool(%struct.device_node* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %23 = icmp ne %struct.st_sensors_platform_data* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.st_sensors_platform_data*, %struct.st_sensors_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.st_sensors_platform_data, %struct.st_sensors_platform_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %17
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
