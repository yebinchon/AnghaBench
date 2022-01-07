; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm70.c_lm70_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm70.c_lm70_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32 }
%struct.of_device_id = type { i64 }
%struct.device = type { i32 }
%struct.lm70 = type { i32, %struct.spi_device*, i32 }
%struct.TYPE_2__ = type { i32 }

@lm70_of_ids = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lm70_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lm70_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm70_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.lm70*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load i32, i32* @lm70_of_ids, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 2
  %11 = call %struct.of_device_id* @of_match_device(i32 %8, i32* %10)
  store %struct.of_device_id* %11, %struct.of_device_id** %4, align 8
  %12 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %13 = icmp ne %struct.of_device_id* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %16 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = call %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SPI_CPOL, align 4
  %29 = load i32, i32* @SPI_CPHA, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %66

36:                                               ; preds = %24
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 2
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.lm70* @devm_kzalloc(i32* %38, i32 24, i32 %39)
  store %struct.lm70* %40, %struct.lm70** %6, align 8
  %41 = load %struct.lm70*, %struct.lm70** %6, align 8
  %42 = icmp ne %struct.lm70* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %66

46:                                               ; preds = %36
  %47 = load %struct.lm70*, %struct.lm70** %6, align 8
  %48 = getelementptr inbounds %struct.lm70, %struct.lm70* %47, i32 0, i32 2
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.lm70*, %struct.lm70** %6, align 8
  %52 = getelementptr inbounds %struct.lm70, %struct.lm70* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = load %struct.lm70*, %struct.lm70** %6, align 8
  %55 = getelementptr inbounds %struct.lm70, %struct.lm70* %54, i32 0, i32 1
  store %struct.spi_device* %53, %struct.spi_device** %55, align 8
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 2
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.lm70*, %struct.lm70** %6, align 8
  %62 = load i32, i32* @lm70_groups, align 4
  %63 = call %struct.device* @devm_hwmon_device_register_with_groups(i32* %57, i32 %60, %struct.lm70* %61, i32 %62)
  store %struct.device* %63, %struct.device** %5, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %46, %43, %33
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.lm70* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(i32*, i32, %struct.lm70*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
