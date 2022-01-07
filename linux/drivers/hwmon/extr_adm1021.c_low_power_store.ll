; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_low_power_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_low_power_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1021_data = type { i8, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ADM1021_REG_CONFIG_R = common dso_local global i32 0, align 4
@ADM1021_REG_CONFIG_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @low_power_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @low_power_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1021_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adm1021_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adm1021_data* %17, %struct.adm1021_data** %10, align 8
  %18 = load %struct.adm1021_data*, %struct.adm1021_data** %10, align 8
  %19 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 10, i64* %13)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %64

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %12, align 1
  %32 = load %struct.adm1021_data*, %struct.adm1021_data** %10, align 8
  %33 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i8, i8* %12, align 1
  %36 = sext i8 %35 to i32
  %37 = load %struct.adm1021_data*, %struct.adm1021_data** %10, align 8
  %38 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 8
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %27
  %43 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %44 = load i32, i32* @ADM1021_REG_CONFIG_R, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %43, i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i8, i8* %12, align 1
  %47 = load %struct.adm1021_data*, %struct.adm1021_data** %10, align 8
  %48 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %47, i32 0, i32 0
  store i8 %46, i8* %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %50 = load i32, i32* @ADM1021_REG_CONFIG_W, align 4
  %51 = load i32, i32* %15, align 4
  %52 = and i32 %51, 191
  %53 = load i8, i8* %12, align 1
  %54 = sext i8 %53 to i32
  %55 = shl i32 %54, 6
  %56 = or i32 %52, %55
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 %56)
  br label %58

58:                                               ; preds = %42, %27
  %59 = load %struct.adm1021_data*, %struct.adm1021_data** %10, align 8
  %60 = getelementptr inbounds %struct.adm1021_data, %struct.adm1021_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.adm1021_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
