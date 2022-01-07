; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_bmc150_magn.c_bmc150_magn_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc150_magn_data = type { i32 }

@BMC150_MAGN_REG_POWER = common dso_local global i32 0, align 4
@BMC150_MAGN_MASK_POWER_CTL = common dso_local global i32 0, align 4
@BMC150_MAGN_START_UP_TIME_MS = common dso_local global i32 0, align 4
@BMC150_MAGN_REG_OPMODE_ODR = common dso_local global i32 0, align 4
@BMC150_MAGN_MASK_OPMODE = common dso_local global i32 0, align 4
@BMC150_MAGN_MODE_SLEEP = common dso_local global i32 0, align 4
@BMC150_MAGN_SHIFT_OPMODE = common dso_local global i32 0, align 4
@BMC150_MAGN_MODE_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmc150_magn_data*, i32, i32)* @bmc150_magn_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_magn_set_power_mode(%struct.bmc150_magn_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bmc150_magn_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bmc150_magn_data* %0, %struct.bmc150_magn_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %49 [
    i32 128, label %10
    i32 129, label %29
    i32 130, label %39
  ]

10:                                               ; preds = %3
  %11 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %5, align 8
  %12 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BMC150_MAGN_REG_POWER, align 4
  %15 = load i32, i32* @BMC150_MAGN_MASK_POWER_CTL, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %52

25:                                               ; preds = %10
  %26 = load i32, i32* @BMC150_MAGN_START_UP_TIME_MS, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = call i32 @usleep_range(i32 %27, i32 20000)
  store i32 0, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %5, align 8
  %31 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BMC150_MAGN_REG_OPMODE_ODR, align 4
  %34 = load i32, i32* @BMC150_MAGN_MASK_OPMODE, align 4
  %35 = load i32, i32* @BMC150_MAGN_MODE_SLEEP, align 4
  %36 = load i32, i32* @BMC150_MAGN_SHIFT_OPMODE, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %3
  %40 = load %struct.bmc150_magn_data*, %struct.bmc150_magn_data** %5, align 8
  %41 = getelementptr inbounds %struct.bmc150_magn_data, %struct.bmc150_magn_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BMC150_MAGN_REG_OPMODE_ODR, align 4
  %44 = load i32, i32* @BMC150_MAGN_MASK_OPMODE, align 4
  %45 = load i32, i32* @BMC150_MAGN_MODE_NORMAL, align 4
  %46 = load i32, i32* @BMC150_MAGN_SHIFT_OPMODE, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %52

49:                                               ; preds = %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %39, %29, %25, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
