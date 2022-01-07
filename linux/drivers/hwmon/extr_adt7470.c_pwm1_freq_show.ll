; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm1_freq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm1_freq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7470_data = type { i32, i32 }

@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@ADT7470_REG_CFG_2 = common dso_local global i32 0, align 4
@ADT7470_FREQ_MASK = common dso_local global i8 0, align 1
@ADT7470_FREQ_SHIFT = common dso_local global i8 0, align 1
@ADT7470_CFG_LF = common dso_local global i8 0, align 1
@adt7470_freq_map = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pwm1_freq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_freq_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adt7470_data*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.adt7470_data* @adt7470_update_device(%struct.device* %11)
  store %struct.adt7470_data* %12, %struct.adt7470_data** %7, align 8
  %13 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %14 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %17 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADT7470_REG_CFG, align 4
  %20 = call zeroext i8 @i2c_smbus_read_byte_data(i32 %18, i32 %19)
  store i8 %20, i8* %8, align 1
  %21 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %22 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADT7470_REG_CFG_2, align 4
  %25 = call zeroext i8 @i2c_smbus_read_byte_data(i32 %23, i32 %24)
  store i8 %25, i8* %9, align 1
  %26 = load %struct.adt7470_data*, %struct.adt7470_data** %7, align 8
  %27 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @ADT7470_FREQ_MASK, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = load i8, i8* @ADT7470_FREQ_SHIFT, align 1
  %35 = zext i8 %34 to i32
  %36 = ashr i32 %33, %35
  store i32 %36, i32* %10, align 4
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @ADT7470_CFG_LF, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %3
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** @adt7470_freq_map, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = icmp sge i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** @adt7470_freq_map, align 8
  %53 = call i32 @ARRAY_SIZE(i32* %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = load i32*, i32** @adt7470_freq_map, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @scnprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62)
  ret i32 %63
}

declare dso_local %struct.adt7470_data* @adt7470_update_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local zeroext i8 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
