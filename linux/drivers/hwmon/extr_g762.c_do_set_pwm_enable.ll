; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_do_set_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g762_data = type { i32, i32, i32, i32, i32 }

@G762_REG_FAN_CMD1_FAN_MODE = common dso_local global i32 0, align 4
@G762_REG_SET_CNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @do_set_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_pwm_enable(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.g762_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.g762_data* @g762_update_client(%struct.device* %8)
  store %struct.g762_data* %9, %struct.g762_data** %6, align 8
  %10 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %11 = call i64 @IS_ERR(%struct.g762_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.g762_data* %14)
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %18 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %17, i32 0, i32 3
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i64, i64* %5, align 8
  switch i64 %20, label %45 [
    i64 129, label %21
    i64 128, label %27
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @G762_REG_FAN_CMD1_FAN_MODE, align 4
  %23 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %24 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %48

27:                                               ; preds = %16
  %28 = load i32, i32* @G762_REG_FAN_CMD1_FAN_MODE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %31 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %35 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %40 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @G762_REG_SET_CNT, align 4
  %43 = call i32 @i2c_smbus_write_byte_data(i32 %41, i32 %42, i32 254)
  br label %44

44:                                               ; preds = %38, %27
  br label %48

45:                                               ; preds = %16
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %59

48:                                               ; preds = %44, %21
  %49 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %50 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @G762_REG_FAN_CMD1, align 4
  %53 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %54 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_smbus_write_byte_data(i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %58 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %57, i32 0, i32 2
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = load %struct.g762_data*, %struct.g762_data** %6, align 8
  %61 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %60, i32 0, i32 3
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.g762_data* @g762_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.g762_data*) #1

declare dso_local i32 @PTR_ERR(%struct.g762_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
