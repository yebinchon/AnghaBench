; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7314.c_ad7314_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ad7314.c_ad7314_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ad7314_data = type { %struct.spi_device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ad7314_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7314_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7314_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ad7314_data*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ad7314_data* @devm_kzalloc(i32* %7, i32 8, i32 %8)
  store %struct.ad7314_data* %9, %struct.ad7314_data** %4, align 8
  %10 = load %struct.ad7314_data*, %struct.ad7314_data** %4, align 8
  %11 = icmp eq %struct.ad7314_data* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.ad7314_data*, %struct.ad7314_data** %4, align 8
  %18 = getelementptr inbounds %struct.ad7314_data, %struct.ad7314_data* %17, i32 0, i32 0
  store %struct.spi_device* %16, %struct.spi_device** %18, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ad7314_data*, %struct.ad7314_data** %4, align 8
  %25 = load i32, i32* @ad7314_groups, align 4
  %26 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %20, i32 %23, %struct.ad7314_data* %24, i32 %25)
  store %struct.device* %26, %struct.device** %5, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %15, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ad7314_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.ad7314_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
