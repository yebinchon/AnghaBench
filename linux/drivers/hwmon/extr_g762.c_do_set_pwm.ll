; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g762_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@G762_REG_SET_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @do_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_pwm(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g762_data*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.g762_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.g762_data* %10, %struct.g762_data** %6, align 8
  %11 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %12 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %11, i32 0, i32 2
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 255
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %21 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %24 = load i32, i32* @G762_REG_SET_OUT, align 4
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %28 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %30 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.g762_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
