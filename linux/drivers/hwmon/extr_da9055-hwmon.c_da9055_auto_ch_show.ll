; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_auto_ch_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_da9055-hwmon.c_da9055_auto_ch_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.da9055_hwmon = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DA9055_REG_VSYS_RES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @da9055_auto_ch_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_auto_ch_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.da9055_hwmon*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.da9055_hwmon* @dev_get_drvdata(%struct.device* %12)
  store %struct.da9055_hwmon* %13, %struct.da9055_hwmon** %8, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %19 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %22 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @da9055_enable_auto_mode(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %67

29:                                               ; preds = %3
  %30 = call i32 @usleep_range(i32 10000, i32 10500)
  %31 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %32 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @DA9055_REG_VSYS_RES, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @da9055_reg_read(i32 %33, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %9, align 4
  br label %61

43:                                               ; preds = %29
  %44 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %45 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @da9055_disable_auto_mode(i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %67

52:                                               ; preds = %43
  %53 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %54 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @volt_reg_to_mv(i32 %57, i32 %58)
  %60 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %4, align 4
  br label %72

61:                                               ; preds = %41
  %62 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %63 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @da9055_disable_auto_mode(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %51, %28
  %68 = load %struct.da9055_hwmon*, %struct.da9055_hwmon** %8, align 8
  %69 = getelementptr inbounds %struct.da9055_hwmon, %struct.da9055_hwmon* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %52
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.da9055_hwmon* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @da9055_enable_auto_mode(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @da9055_reg_read(i32, i64) #1

declare dso_local i32 @da9055_disable_auto_mode(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @volt_reg_to_mv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
