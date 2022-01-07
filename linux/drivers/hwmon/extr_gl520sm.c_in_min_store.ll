; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_in_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl520sm.c_in_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gl520_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GL520_REG_IN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gl520_data*, align 8
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
  %17 = call %struct.gl520_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.gl520_data* %17, %struct.gl520_data** %10, align 8
  %18 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %19 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtol(i8* %25, i32 10, i64* %14)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %86

31:                                               ; preds = %4
  %32 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %33 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @VDD_TO_REG(i64 %38)
  store i32 %39, i32* %13, align 4
  br label %43

40:                                               ; preds = %31
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @IN_TO_REG(i64 %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %46 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %55 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gl520_read_value(%struct.i2c_client* %60, i32 %65)
  %67 = and i32 %66, -256
  %68 = load i32, i32* %13, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @gl520_write_value(%struct.i2c_client* %54, i32 %59, i32 %69)
  br label %80

71:                                               ; preds = %43
  %72 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %73 = load i32*, i32** @GL520_REG_IN_MIN, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @gl520_write_value(%struct.i2c_client* %72, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %53
  %81 = load %struct.gl520_data*, %struct.gl520_data** %10, align 8
  %82 = getelementptr inbounds %struct.gl520_data, %struct.gl520_data* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i64, i64* %9, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %29
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.gl520_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @VDD_TO_REG(i64) #1

declare dso_local i32 @IN_TO_REG(i64) #1

declare dso_local i32 @gl520_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @gl520_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
