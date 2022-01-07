; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_chip_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_chip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.lm90_data = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i64)* @lm90_chip_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_chip_write(%struct.device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm90_data*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.lm90_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.lm90_data* %13, %struct.lm90_data** %9, align 8
  %14 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %15 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %18 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @lm90_update_device(%struct.device* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %33 [
    i32 128, label %27
  ]

27:                                               ; preds = %25
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @clamp_val(i64 %30, i32 0, i32 100000)
  %32 = call i32 @lm90_set_convrate(%struct.i2c_client* %28, %struct.lm90_data* %29, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.lm90_data*, %struct.lm90_data** %9, align 8
  %39 = getelementptr inbounds %struct.lm90_data, %struct.lm90_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %11, align 4
  ret i32 %41
}

declare dso_local %struct.lm90_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lm90_update_device(%struct.device*) #1

declare dso_local i32 @lm90_set_convrate(%struct.i2c_client*, %struct.lm90_data*, i32) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
