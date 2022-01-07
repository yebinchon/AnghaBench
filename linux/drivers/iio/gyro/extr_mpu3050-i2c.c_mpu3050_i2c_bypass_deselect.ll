; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_bypass_deselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_bypass_deselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.mpu3050 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @mpu3050_i2c_bypass_deselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_i2c_bypass_deselect(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_mux_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpu3050*, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %7 = call %struct.mpu3050* @i2c_mux_priv(%struct.i2c_mux_core* %6)
  store %struct.mpu3050* %7, %struct.mpu3050** %5, align 8
  %8 = load %struct.mpu3050*, %struct.mpu3050** %5, align 8
  %9 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_mark_last_busy(i32 %10)
  %12 = load %struct.mpu3050*, %struct.mpu3050** %5, align 8
  %13 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_put_autosuspend(i32 %14)
  ret i32 0
}

declare dso_local %struct.mpu3050* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
