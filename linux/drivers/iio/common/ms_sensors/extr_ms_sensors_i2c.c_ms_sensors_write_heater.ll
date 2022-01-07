; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_write_heater.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_write_heater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_ht_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MS_SENSORS_CONFIG_REG_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to write config register\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_write_heater(%struct.ms_ht_dev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ms_ht_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ms_ht_dev* %0, %struct.ms_ht_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @kstrtou8(i8* %11, i32 10, i32* %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %17
  %24 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %25 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %28 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call i32 @ms_sensors_read_config_reg(%struct.TYPE_3__* %29, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %35 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %23
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 251
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %46 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* @MS_SENSORS_CONFIG_REG_WRITE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %52 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %38
  %57 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %5, align 8
  %58 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %66

63:                                               ; preds = %38
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %56, %33, %20, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ms_sensors_read_config_reg(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
