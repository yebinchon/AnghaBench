; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_write_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_write_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ms_ht_dev = type { i32 }

@MS_SENSORS_CONFIG_REG_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_write_resolution(%struct.ms_ht_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ms_ht_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ms_ht_dev* %0, %struct.ms_ht_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %4, align 8
  %9 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ms_sensors_read_config_reg(i32 %10, i32* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 126
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = shl i32 %20, 7
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 2
  %24 = ashr i32 %23, 1
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %4, align 8
  %29 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MS_SENSORS_CONFIG_REG_WRITE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %16, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ms_sensors_read_config_reg(i32, i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
