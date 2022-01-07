; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7871.c_voltage_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7871.c_voltage_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ads7871_data = type { %struct.spi_device* }
%struct.spi_device = type { i32 }
%struct.sensor_device_attribute = type { i32 }

@REG_GAIN_MUX = common dso_local global i32 0, align 4
@MUX_CNV_BM = common dso_local global i32 0, align 4
@MUX_M3_BM = common dso_local global i32 0, align 4
@MUX_CNV_BV = common dso_local global i32 0, align 4
@REG_LS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @voltage_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @voltage_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ads7871_data*, align 8
  %9 = alloca %struct.spi_device*, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.ads7871_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.ads7871_data* %17, %struct.ads7871_data** %8, align 8
  %18 = load %struct.ads7871_data*, %struct.ads7871_data** %8, align 8
  %19 = getelementptr inbounds %struct.ads7871_data, %struct.ads7871_data* %18, i32 0, i32 0
  %20 = load %struct.spi_device*, %struct.spi_device** %19, align 8
  store %struct.spi_device* %20, %struct.spi_device** %9, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %22 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute* %22, %struct.sensor_device_attribute** %10, align 8
  store i32 0, i32* %13, align 4
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %27 = load i32, i32* @REG_GAIN_MUX, align 4
  %28 = load i32, i32* @MUX_CNV_BM, align 4
  %29 = load i32, i32* @MUX_M3_BM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @ads7871_write_reg8(%struct.spi_device* %26, i32 %27, i32 %32)
  %34 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %35 = load i32, i32* @REG_GAIN_MUX, align 4
  %36 = call i32 @ads7871_read_reg8(%struct.spi_device* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @MUX_CNV_BM, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MUX_CNV_BV, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %15, align 4
  br label %42

42:                                               ; preds = %50, %3
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  %53 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %54 = load i32, i32* @REG_GAIN_MUX, align 4
  %55 = call i32 @ads7871_read_reg8(%struct.spi_device* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MUX_CNV_BM, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @MUX_CNV_BV, align 4
  %60 = ashr i32 %58, %59
  store i32 %60, i32* %15, align 4
  %61 = call i32 @msleep_interruptible(i32 1)
  br label %42

62:                                               ; preds = %48
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.spi_device*, %struct.spi_device** %9, align 8
  %67 = load i32, i32* @REG_LS_BYTE, align 4
  %68 = call i32 @ads7871_read_reg16(%struct.spi_device* %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 2
  %71 = mul nsw i32 %70, 25000
  %72 = sdiv i32 %71, 8192
  store i32 %72, i32* %12, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @sprintf(i8* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %74)
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ads7871_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @ads7871_write_reg8(%struct.spi_device*, i32, i32) #1

declare dso_local i32 @ads7871_read_reg8(%struct.spi_device*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @ads7871_read_reg16(%struct.spi_device*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
