; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lineage-pem.c_pem_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lineage-pem.c_pem_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pem_data = type { i32, i32, i32, i64, i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@PEM_READ_DATA_STRING = common dso_local global i32 0, align 4
@PEM_READ_INPUT_STRING = common dso_local global i32 0, align 4
@PEM_READ_FAN_SPEED = common dso_local global i32 0, align 4
@PEM_CLEAR_INFO_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pem_data* (%struct.device*)* @pem_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pem_data* @pem_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pem_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.pem_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.pem_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.pem_data* %8, %struct.pem_data** %3, align 8
  %9 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %10 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %9, i32 0, i32 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  store %struct.pem_data* %12, %struct.pem_data** %5, align 8
  %13 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %14 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %18 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @time_after(i64 %16, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %26 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %98, label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load i32, i32* @PEM_READ_DATA_STRING, align 4
  %32 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %33 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pem_read_block(%struct.i2c_client* %30, i32 %31, i32 %34, i32 4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = call %struct.pem_data* @ERR_PTR(i32 %42)
  store %struct.pem_data* %43, %struct.pem_data** %5, align 8
  br label %99

44:                                               ; preds = %29
  %45 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %46 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = load i32, i32* @PEM_READ_INPUT_STRING, align 4
  %52 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %53 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %56 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pem_read_block(%struct.i2c_client* %50, i32 %51, i32 %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = call %struct.pem_data* @ERR_PTR(i32 %65)
  store %struct.pem_data* %66, %struct.pem_data** %5, align 8
  br label %99

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %44
  %69 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %70 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* @PEM_READ_FAN_SPEED, align 4
  %76 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %77 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pem_read_block(%struct.i2c_client* %74, i32 %75, i32 %78, i32 4)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* %6, align 4
  %87 = call %struct.pem_data* @ERR_PTR(i32 %86)
  store %struct.pem_data* %87, %struct.pem_data** %5, align 8
  br label %99

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %68
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load i32, i32* @PEM_CLEAR_INFO_FLAGS, align 4
  %92 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %90, i32 %91)
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %95 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %97 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %89, %24
  br label %99

99:                                               ; preds = %98, %85, %64, %41
  %100 = load %struct.pem_data*, %struct.pem_data** %3, align 8
  %101 = getelementptr inbounds %struct.pem_data, %struct.pem_data* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.pem_data*, %struct.pem_data** %5, align 8
  ret %struct.pem_data* %103
}

declare dso_local %struct.pem_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @pem_read_block(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pem_data* @ERR_PTR(i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
