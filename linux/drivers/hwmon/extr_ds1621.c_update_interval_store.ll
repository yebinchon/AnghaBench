; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_update_interval_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds1621.c_update_interval_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ds1621_data = type { i32, i64, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ds1721_convrates = common dso_local global i64* null, align 8
@DS1621_REG_CONF = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_RESOL = common dso_local global i32 0, align 4
@DS1621_REG_CONFIG_RESOL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @update_interval_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_interval_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ds1621_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ds1621_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.ds1621_data* %16, %struct.ds1621_data** %10, align 8
  %17 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %18 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %17, i32 0, i32 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 10, i64* %12)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %5, align 8
  br label %89

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i64*, i64** @ds1721_convrates, align 8
  %30 = call i32 @ARRAY_SIZE(i64* %29)
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  %35 = load i64*, i64** @ds1721_convrates, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %34, %39
  br label %41

41:                                               ; preds = %33, %27
  %42 = phi i1 [ false, %27 ], [ %40, %33 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  br label %27

46:                                               ; preds = %41
  %47 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %48 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %47, i32 0, i32 3
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %51 = load i32, i32* @DS1621_REG_CONF, align 4
  %52 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %51)
  %53 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %54 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @DS1621_REG_CONFIG_RESOL, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %58 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @DS1621_REG_CONFIG_RESOL_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %65 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %69 = load i32, i32* @DS1621_REG_CONF, align 4
  %70 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %71 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %69, i32 %72)
  %74 = load i64*, i64** @ds1721_convrates, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %80 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sub nsw i32 7, %81
  %83 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %84 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ds1621_data*, %struct.ds1621_data** %10, align 8
  %86 = getelementptr inbounds %struct.ds1621_data, %struct.ds1621_data* %85, i32 0, i32 3
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %46, %24
  %90 = load i64, i64* %5, align 8
  ret i64 %90
}

declare dso_local %struct.ds1621_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

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
