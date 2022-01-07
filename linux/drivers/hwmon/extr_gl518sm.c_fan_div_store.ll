; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl518_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Invalid fan clock divider %lu, choose one of 1, 2, 4 or 8\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GL518_REG_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl518_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.gl518_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.gl518_data* %17, %struct.gl518_data** %10, align 8
  %18 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %19 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %87

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  switch i64 %32, label %37 [
    i64 1, label %33
    i64 2, label %34
    i64 4, label %35
    i64 8, label %36
  ]

33:                                               ; preds = %31
  store i64 0, i64* %14, align 8
  br label %43

34:                                               ; preds = %31
  store i64 1, i64* %14, align 8
  br label %43

35:                                               ; preds = %31
  store i64 2, i64* %14, align 8
  br label %43

36:                                               ; preds = %31
  store i64 3, i64* %14, align 8
  br label %43

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i64, i64* %14, align 8
  %40 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %87

43:                                               ; preds = %36, %35, %34, %33
  %44 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %45 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %48 = load i32, i32* @GL518_REG_MISC, align 4
  %49 = call i32 @gl518_read_value(%struct.i2c_client* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %52 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = mul nsw i32 2, %58
  %60 = ashr i32 192, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %65 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 2, %71
  %73 = sub nsw i32 6, %72
  %74 = zext i32 %73 to i64
  %75 = shl i64 %70, %74
  %76 = or i64 %63, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %13, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %79 = load i32, i32* @GL518_REG_MISC, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @gl518_write_value(%struct.i2c_client* %78, i32 %79, i32 %80)
  %82 = load %struct.gl518_data*, %struct.gl518_data** %10, align 8
  %83 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i64, i64* %9, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %43, %37, %29
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.gl518_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @gl518_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
