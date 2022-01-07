; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smm665.c_smm665_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm665_data = type { i32, i32, i32*, i32, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@SMM665_MISC8_STATUS1 = common dso_local global i32 0, align 4
@SMM665_NUM_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smm665_data* (%struct.device*)* @smm665_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smm665_data* @smm665_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.smm665_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.smm665_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.smm665_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.smm665_data* %9, %struct.smm665_data** %3, align 8
  %10 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %11 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %10, i32 0, i32 5
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  store %struct.smm665_data* %13, %struct.smm665_data** %5, align 8
  %14 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %15 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %14, i32 0, i32 3
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i64, i64* @jiffies, align 8
  %18 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %19 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i64 @time_after(i64 %17, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %27 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @SMM665_MISC8_STATUS1, align 4
  %33 = call i32 @smm665_read16(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.smm665_data* @ERR_PTR(i32 %40)
  store %struct.smm665_data* %41, %struct.smm665_data** %5, align 8
  br label %80

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %45 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %70, %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SMM665_NUM_ADC, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @smm665_read_adc(%struct.smm665_data* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.smm665_data* @ERR_PTR(i32 %60)
  store %struct.smm665_data* %61, %struct.smm665_data** %5, align 8
  br label %80

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %65 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load i64, i64* @jiffies, align 8
  %75 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %76 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  %77 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %78 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %25
  br label %80

80:                                               ; preds = %79, %59, %39
  %81 = load %struct.smm665_data*, %struct.smm665_data** %3, align 8
  %82 = getelementptr inbounds %struct.smm665_data, %struct.smm665_data* %81, i32 0, i32 3
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.smm665_data*, %struct.smm665_data** %5, align 8
  ret %struct.smm665_data* %84
}

declare dso_local %struct.smm665_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @smm665_read16(%struct.i2c_client*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.smm665_data* @ERR_PTR(i32) #1

declare dso_local i32 @smm665_read_adc(%struct.smm665_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
