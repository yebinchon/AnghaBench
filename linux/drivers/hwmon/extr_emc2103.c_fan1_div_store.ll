; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc2103.c_fan1_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.emc2103_data = type { i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_FAN_CONF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"reg 0x%02x, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan1_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan1_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.emc2103_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.emc2103_data* @emc2103_update_device(%struct.device* %17)
  store %struct.emc2103_data* %18, %struct.emc2103_data** %10, align 8
  %19 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %20 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %19, i32 0, i32 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %11, align 8
  %22 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %23 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 8, %24
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %4
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %116

40:                                               ; preds = %32
  %41 = load i64, i64* %14, align 8
  switch i64 %41, label %46 [
    i64 1, label %42
    i64 2, label %43
    i64 4, label %44
    i64 8, label %45
  ]

42:                                               ; preds = %40
  store i32 3, i32* %12, align 4
  br label %49

43:                                               ; preds = %40
  store i32 2, i32* %12, align 4
  br label %49

44:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  br label %49

45:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %116

49:                                               ; preds = %45, %44, %43, %42
  %50 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %51 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %50, i32 0, i32 3
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %54 = load i32, i32* @REG_FAN_CONF1, align 4
  %55 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* @REG_FAN_CONF1, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @dev_dbg(i32* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %65 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %64, i32 0, i32 3
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %49
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %69, 159
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 5
  %73 = load i32, i32* %15, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %76 = load i32, i32* @REG_FAN_CONF1, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %75, i32 %76, i32 %77)
  %79 = load i64, i64* %14, align 8
  %80 = sdiv i64 8, %79
  %81 = trunc i64 %80 to i32
  %82 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %83 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %85 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 8160
  %88 = icmp ne i32 %87, 8160
  br i1 %88, label %89, label %108

89:                                               ; preds = %68
  %90 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %91 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %14, align 8
  %97 = sdiv i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @min(i32 %99, i32 8191)
  %101 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %102 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %104 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %105 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_fan_target_to_i2c(%struct.i2c_client* %103, i32 %106)
  br label %108

108:                                              ; preds = %89, %68
  %109 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %110 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = load %struct.emc2103_data*, %struct.emc2103_data** %10, align 8
  %112 = getelementptr inbounds %struct.emc2103_data, %struct.emc2103_data* %111, i32 0, i32 3
  %113 = call i32 @mutex_unlock(i32* %112)
  %114 = load i64, i64* %9, align 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %108, %58, %46, %37, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.emc2103_data* @emc2103_update_device(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @write_fan_target_to_i2c(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
