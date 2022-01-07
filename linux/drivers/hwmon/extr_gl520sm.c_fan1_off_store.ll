; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan1_off_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_fan1_off_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl520_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@GL520_REG_FAN_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan1_off_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_off_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl520_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.gl520_data* %16, %struct.gl520_data** %10, align 8
  %17 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %18 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %5, align 4
  br label %52

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %12, align 4
  %31 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %32 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %36 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %38 = load i32, i32* @GL520_REG_FAN_OFF, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %40 = load i32, i32* @GL520_REG_FAN_OFF, align 4
  %41 = call i32 @gl520_read_value(%struct.i2c_client* %39, i32 %40)
  %42 = and i32 %41, -13
  %43 = load i32, i32* %12, align 4
  %44 = shl i32 %43, 2
  %45 = or i32 %42, %44
  %46 = call i32 @gl520_write_value(%struct.i2c_client* %37, i32 %38, i32 %45)
  %47 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %48 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %26, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
