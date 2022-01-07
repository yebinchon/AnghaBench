; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait_for_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-omap.c_omap_i2c_wait_for_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_i2c_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@OMAP_I2C_TIMEOUT = common dso_local global i64 0, align 8
@OMAP_I2C_STAT_REG = common dso_local global i32 0, align 4
@OMAP_I2C_STAT_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_i2c_dev*)* @omap_i2c_wait_for_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_i2c_wait_for_bb(%struct.omap_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_i2c_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.omap_i2c_dev* %0, %struct.omap_i2c_dev** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load i64, i64* @OMAP_I2C_TIMEOUT, align 8
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %10 = load i32, i32* @OMAP_I2C_STAT_REG, align 4
  %11 = call i32 @omap_i2c_read_reg(%struct.omap_i2c_dev* %9, i32 %10)
  %12 = load i32, i32* @OMAP_I2C_STAT_BB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @time_after(i64 %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.omap_i2c_dev*, %struct.omap_i2c_dev** %3, align 8
  %22 = call i32 @omap_i2c_recover_bus(%struct.omap_i2c_dev* %21)
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %15
  %24 = call i32 @msleep(i32 1)
  br label %8

25:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @omap_i2c_read_reg(%struct.omap_i2c_dev*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @omap_i2c_recover_bus(%struct.omap_i2c_dev*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
