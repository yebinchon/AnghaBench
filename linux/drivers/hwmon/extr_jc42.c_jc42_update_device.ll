; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_jc42.c_jc42_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jc42_data = type { i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@t_num_temp = common dso_local global i32 0, align 4
@temp_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jc42_data* (%struct.device*)* @jc42_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jc42_data* @jc42_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.jc42_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.jc42_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.jc42_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.jc42_data* %9, %struct.jc42_data** %3, align 8
  %10 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %11 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %10, i32 0, i32 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  store %struct.jc42_data* %13, %struct.jc42_data** %5, align 8
  %14 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %15 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %14, i32 0, i32 2
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %19 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @time_after(i64 %17, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %27 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25, %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @t_num_temp, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32*, i32** @temp_regs, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_smbus_read_word_swapped(%struct.i2c_client* %36, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.jc42_data* @ERR_PTR(i32 %46)
  store %struct.jc42_data* %47, %struct.jc42_data** %5, align 8
  br label %66

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %51 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i64, i64* @jiffies, align 8
  %61 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %62 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %64 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %25
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.jc42_data*, %struct.jc42_data** %3, align 8
  %68 = getelementptr inbounds %struct.jc42_data, %struct.jc42_data* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.jc42_data*, %struct.jc42_data** %5, align 8
  ret %struct.jc42_data* %70
}

declare dso_local %struct.jc42_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_word_swapped(%struct.i2c_client*, i32) #1

declare dso_local %struct.jc42_data* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
