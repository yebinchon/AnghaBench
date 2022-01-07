; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87427.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pc87427_data = type { i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@LD_FAN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PC87427_REG_BANK = common dso_local global i64 0, align 8
@PC87427_REG_FAN_STATUS = common dso_local global i64 0, align 8
@PC87427_REG_FAN_MIN = common dso_local global i64 0, align 8
@FAN_STATUS_MONEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pc87427_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.pc87427_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.pc87427_data* %15, %struct.pc87427_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %21 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @LD_FAN, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @kstrtoul(i8* %26, i32 10, i64* %12)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %78

32:                                               ; preds = %4
  %33 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %34 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @BANK_FM(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @PC87427_REG_BANK, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb(i32 %37, i64 %41)
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @PC87427_REG_FAN_STATUS, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 0, i64 %46)
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @fan_to_reg(i64 %48)
  %50 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %51 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %57 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @PC87427_REG_FAN_MIN, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outw(i32 %62, i64 %66)
  %68 = load i32, i32* @FAN_STATUS_MONEN, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* @PC87427_REG_FAN_STATUS, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outb(i32 %68, i64 %72)
  %74 = load %struct.pc87427_data*, %struct.pc87427_data** %10, align 8
  %75 = getelementptr inbounds %struct.pc87427_data, %struct.pc87427_data* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %32, %29
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local %struct.pc87427_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @BANK_FM(i32) #1

declare dso_local i32 @fan_to_reg(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
