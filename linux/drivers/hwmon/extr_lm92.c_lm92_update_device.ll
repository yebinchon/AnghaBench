; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm92.c_lm92_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm92.c_lm92_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm92_data = type { i32, i32, i64, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Updating lm92 data\0A\00", align 1
@t_num_regs = common dso_local global i32 0, align 4
@regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm92_data* (%struct.device*)* @lm92_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm92_data* @lm92_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm92_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.lm92_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.lm92_data* %7, %struct.lm92_data** %3, align 8
  %8 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %9 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %8, i32 0, i32 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %16 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HZ, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @time_after(i64 %14, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %24 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %49, %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @t_num_regs, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32*, i32** @regs, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %36, i32 %41)
  %43 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %44 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load i64, i64* @jiffies, align 8
  %54 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %55 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %57 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %22
  %59 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  %60 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.lm92_data*, %struct.lm92_data** %3, align 8
  ret %struct.lm92_data* %62
}

declare dso_local %struct.lm92_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
