; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adcxx.c_adcxx_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.spi_device = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adcxx = type { i32, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SPI synch. transfer failed with status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"raw value = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adcxx_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adcxx_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca %struct.adcxx*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.spi_device* @to_spi_device(%struct.device* %15)
  store %struct.spi_device* %16, %struct.spi_device** %8, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %9, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %20 = call %struct.adcxx* @spi_get_drvdata(%struct.spi_device* %19)
  store %struct.adcxx* %20, %struct.adcxx** %10, align 8
  %21 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %22 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %21, i32 0, i32 2
  %23 = call i64 @mutex_lock_interruptible(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ERESTARTSYS, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %78

28:                                               ; preds = %3
  %29 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %30 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %36 = call i32 @spi_read(%struct.spi_device* %34, i32* %35, i32 8)
  store i32 %36, i32* %13, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %39 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 3
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %46 = call i32 @spi_write_then_read(%struct.spi_device* %43, i32* %44, i32 8, i32* %45, i32 8)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %37, %33
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %73

54:                                               ; preds = %47
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %14, align 4
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @dev_dbg(%struct.device* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %66 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = ashr i32 %68, 12
  store i32 %69, i32* %14, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %54, %50
  %74 = load %struct.adcxx*, %struct.adcxx** %10, align 8
  %75 = getelementptr inbounds %struct.adcxx, %struct.adcxx* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %73, %25
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adcxx* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spi_read(%struct.spi_device*, i32*, i32) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
