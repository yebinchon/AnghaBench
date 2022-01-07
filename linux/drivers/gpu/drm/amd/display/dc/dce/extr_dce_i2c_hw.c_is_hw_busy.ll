; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_is_hw_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_is_hw_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32 }

@DC_I2C_SW_STATUS = common dso_local global i32 0, align 4
@DC_I2C_STATUS__DC_I2C_STATUS_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_i2c_hw*)* @is_hw_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hw_busy(%struct.dce_i2c_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dce_i2c_hw*, align 8
  %4 = alloca i64, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %6 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %7 = call i32 @REG_GET(i32 %5, i32 %6, i64* %4)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @DC_I2C_STATUS__DC_I2C_STATUS_IDLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %14 = call i64 @is_engine_available(%struct.dce_i2c_hw* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

declare dso_local i64 @is_engine_available(%struct.dce_i2c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
