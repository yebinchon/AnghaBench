; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_app_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_app_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MMA9551_APPID_RSC = common dso_local global i32 0, align 4
@MMA9551_RSC_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mma9551_app_reset(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @MMA9551_APPID_RSC, align 4
  %7 = load i64, i64* @MMA9551_RSC_RESET, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @MMA9551_RSC_OFFSET(i32 %8)
  %10 = add nsw i64 %7, %9
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @MMA9551_RSC_VAL(i32 %11)
  %13 = call i32 @mma9551_write_config_byte(%struct.i2c_client* %5, i32 %6, i64 %10, i32 %12)
  ret i32 %13
}

declare dso_local i32 @mma9551_write_config_byte(%struct.i2c_client*, i32, i64, i32) #1

declare dso_local i64 @MMA9551_RSC_OFFSET(i32) #1

declare dso_local i32 @MMA9551_RSC_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
