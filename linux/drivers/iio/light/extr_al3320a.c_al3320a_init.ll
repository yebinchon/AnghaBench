; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_al3320a.c_al3320a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al3320a_data = type { i32 }

@AL3320A_REG_CONFIG = common dso_local global i32 0, align 4
@AL3320A_CONFIG_ENABLE = common dso_local global i32 0, align 4
@AL3320A_REG_CONFIG_RANGE = common dso_local global i32 0, align 4
@AL3320A_RANGE_3 = common dso_local global i32 0, align 4
@AL3320A_GAIN_SHIFT = common dso_local global i32 0, align 4
@AL3320A_REG_MEAN_TIME = common dso_local global i32 0, align 4
@AL3320A_DEFAULT_MEAN_TIME = common dso_local global i32 0, align 4
@AL3320A_REG_WAIT = common dso_local global i32 0, align 4
@AL3320A_DEFAULT_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al3320a_data*)* @al3320a_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al3320a_init(%struct.al3320a_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al3320a_data*, align 8
  %4 = alloca i32, align 4
  store %struct.al3320a_data* %0, %struct.al3320a_data** %3, align 8
  %5 = load %struct.al3320a_data*, %struct.al3320a_data** %3, align 8
  %6 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AL3320A_REG_CONFIG, align 4
  %9 = load i32, i32* @AL3320A_CONFIG_ENABLE, align 4
  %10 = call i32 @i2c_smbus_write_byte_data(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.al3320a_data*, %struct.al3320a_data** %3, align 8
  %17 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AL3320A_REG_CONFIG_RANGE, align 4
  %20 = load i32, i32* @AL3320A_RANGE_3, align 4
  %21 = load i32, i32* @AL3320A_GAIN_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = call i32 @i2c_smbus_write_byte_data(i32 %18, i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %15
  %29 = load %struct.al3320a_data*, %struct.al3320a_data** %3, align 8
  %30 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AL3320A_REG_MEAN_TIME, align 4
  %33 = load i32, i32* @AL3320A_DEFAULT_MEAN_TIME, align 4
  %34 = call i32 @i2c_smbus_write_byte_data(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %51

39:                                               ; preds = %28
  %40 = load %struct.al3320a_data*, %struct.al3320a_data** %3, align 8
  %41 = getelementptr inbounds %struct.al3320a_data, %struct.al3320a_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AL3320A_REG_WAIT, align 4
  %44 = load i32, i32* @AL3320A_DEFAULT_WAIT_TIME, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %48, %37, %26, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
