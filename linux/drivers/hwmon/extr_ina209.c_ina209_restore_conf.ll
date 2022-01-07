; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_restore_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_restore_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ina209_data = type { i32, i32 }

@INA209_CONFIGURATION = common dso_local global i32 0, align 4
@INA209_CALIBRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.ina209_data*)* @ina209_restore_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ina209_restore_conf(%struct.i2c_client* %0, %struct.ina209_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ina209_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.ina209_data* %1, %struct.ina209_data** %4, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @INA209_CONFIGURATION, align 4
  %7 = load %struct.ina209_data*, %struct.ina209_data** %4, align 8
  %8 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %5, i32 %6, i32 %9)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = load i32, i32* @INA209_CALIBRATION, align 4
  %13 = load %struct.ina209_data*, %struct.ina209_data** %4, align 8
  %14 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %11, i32 %12, i32 %15)
  ret void
}

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
