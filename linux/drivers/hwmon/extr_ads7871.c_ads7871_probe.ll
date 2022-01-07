; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7871.c_ads7871_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7871.c_ads7871_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.ads7871_data = type { %struct.spi_device* }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@REG_SER_CONTROL = common dso_local global i32 0, align 4
@REG_AD_CONTROL = common dso_local global i32 0, align 4
@OSC_OSCR_BM = common dso_local global i32 0, align 4
@OSC_OSCE_BM = common dso_local global i32 0, align 4
@OSC_REFE_BM = common dso_local global i32 0, align 4
@OSC_BUFE_BM = common dso_local global i32 0, align 4
@REG_OSC_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"REG_OSC_CONTROL write:%x, read:%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ads7871_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ads7871_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7871_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ads7871_data*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 3
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @SPI_MODE_0, align 4
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  store i32 8, i32* %15, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = call i32 @spi_setup(%struct.spi_device* %16)
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load i32, i32* @REG_SER_CONTROL, align 4
  %20 = call i32 @ads7871_write_reg8(%struct.spi_device* %18, i32 %19, i32 0)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = load i32, i32* @REG_AD_CONTROL, align 4
  %23 = call i32 @ads7871_write_reg8(%struct.spi_device* %21, i32 %22, i32 0)
  %24 = load i32, i32* @OSC_OSCR_BM, align 4
  %25 = load i32, i32* @OSC_OSCE_BM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @OSC_REFE_BM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @OSC_BUFE_BM, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load i32, i32* @REG_OSC_CONTROL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ads7871_write_reg8(%struct.spi_device* %31, i32 %32, i32 %33)
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = load i32, i32* @REG_OSC_CONTROL, align 4
  %37 = call i32 @ads7871_read_reg8(%struct.spi_device* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %1
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.ads7871_data* @devm_kzalloc(%struct.device* %49, i32 8, i32 %50)
  store %struct.ads7871_data* %51, %struct.ads7871_data** %7, align 8
  %52 = load %struct.ads7871_data*, %struct.ads7871_data** %7, align 8
  %53 = icmp ne %struct.ads7871_data* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %70

57:                                               ; preds = %48
  %58 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %59 = load %struct.ads7871_data*, %struct.ads7871_data** %7, align 8
  %60 = getelementptr inbounds %struct.ads7871_data, %struct.ads7871_data* %59, i32 0, i32 0
  store %struct.spi_device* %58, %struct.spi_device** %60, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %63 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ads7871_data*, %struct.ads7871_data** %7, align 8
  %66 = load i32, i32* @ads7871_groups, align 4
  %67 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %61, i32 %64, %struct.ads7871_data* %65, i32 %66)
  store %struct.device* %67, %struct.device** %8, align 8
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %68)
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %57, %54, %45
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @ads7871_write_reg8(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @ads7871_read_reg8(%struct.spi_device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.ads7871_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.ads7871_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
