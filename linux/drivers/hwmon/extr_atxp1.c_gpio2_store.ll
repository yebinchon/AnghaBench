; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_gpio2_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_atxp1.c_gpio2_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.atxp1_data = type { i64, %struct.TYPE_2__, %struct.i2c_client* }
%struct.TYPE_2__ = type { i64 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Writing 0x%x to GPIO1.\0A\00", align 1
@ATXP1_GPIO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @gpio2_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio2_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.atxp1_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.atxp1_data* @atxp1_update_device(%struct.device* %14)
  store %struct.atxp1_data* %15, %struct.atxp1_data** %10, align 8
  %16 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %17 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 16, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i64, i64* %12, align 8
  %27 = and i64 %26, 255
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %30 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dev_info(%struct.device* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %40 = load i32, i32* @ATXP1_GPIO2, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %39, i32 %40, i64 %41)
  %43 = load %struct.atxp1_data*, %struct.atxp1_data** %10, align 8
  %44 = getelementptr inbounds %struct.atxp1_data, %struct.atxp1_data* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %34, %25
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %23
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.atxp1_data* @atxp1_update_device(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
