; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_hih6130.c_hih6130_update_measurements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_hih6130.c_hih6130_update_measurements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hih6130 = type { i32, i32, i64, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i8*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Error while reading measurement result\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hih6130_update_measurements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hih6130_update_measurements(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.hih6130*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca [1 x %struct.i2c_msg], align 16
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.hih6130* @dev_get_drvdata(%struct.device* %9)
  store %struct.hih6130* %10, %struct.hih6130** %3, align 8
  %11 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %12 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %11, i32 0, i32 6
  %13 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  store %struct.i2c_client* %13, %struct.i2c_client** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i32 4, i32* %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  %19 = load i32, i32* @I2C_M_RD, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %25 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %29 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @time_after(i64 %27, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %37 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %103, label %40

40:                                               ; preds = %35, %1
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %41, align 1
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %44 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %45 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i2c_master_send(%struct.i2c_client* %42, i8* %43, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %104

51:                                               ; preds = %40
  %52 = call i32 @msleep(i32 40)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %8, i64 0, i64 0
  %57 = call i32 @i2c_transfer(i32 %55, %struct.i2c_msg* %56, i32 1)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %104

61:                                               ; preds = %51
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 192
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %104

73:                                               ; preds = %61
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = shl i32 %76, 8
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @hih6130_rh_ticks_to_per_cent_mille(i32 %82)
  %84 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %85 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 8
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @hih6130_temp_ticks_to_millicelsius(i32 %94)
  %96 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %97 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* @jiffies, align 8
  %99 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %100 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %102 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %73, %35
  br label %104

104:                                              ; preds = %103, %67, %60, %50
  %105 = load %struct.hih6130*, %struct.hih6130** %3, align 8
  %106 = getelementptr inbounds %struct.hih6130, %struct.hih6130* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %5, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %110
  %114 = phi i32 [ 0, %110 ], [ %112, %111 ]
  ret i32 %114
}

declare dso_local %struct.hih6130* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hih6130_rh_ticks_to_per_cent_mille(i32) #1

declare dso_local i32 @hih6130_temp_ticks_to_millicelsius(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
