; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_limits_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_limits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht3x_limit_commands = type { i32 }
%struct.sht3x_data = type { i32*, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@SHT3X_RESPONSE_LENGTH = common dso_local global i32 0, align 4
@SHT3X_NUM_LIMIT_CMD = common dso_local global i64 0, align 8
@limit_commands = common dso_local global %struct.sht3x_limit_commands* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht3x_data*)* @limits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limits_update(%struct.sht3x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sht3x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sht3x_limit_commands*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  store %struct.sht3x_data* %0, %struct.sht3x_data** %3, align 8
  %14 = load i32, i32* @SHT3X_RESPONSE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.sht3x_data*, %struct.sht3x_data** %3, align 8
  %19 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %62, %1
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SHT3X_NUM_LIMIT_CMD, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.sht3x_limit_commands*, %struct.sht3x_limit_commands** @limit_commands, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.sht3x_limit_commands, %struct.sht3x_limit_commands* %26, i64 %27
  store %struct.sht3x_limit_commands* %28, %struct.sht3x_limit_commands** %11, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %30 = load %struct.sht3x_data*, %struct.sht3x_data** %3, align 8
  %31 = load %struct.sht3x_limit_commands*, %struct.sht3x_limit_commands** %11, align 8
  %32 = getelementptr inbounds %struct.sht3x_limit_commands, %struct.sht3x_limit_commands* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SHT3X_RESPONSE_LENGTH, align 4
  %35 = call i32 @sht3x_read_from_command(%struct.i2c_client* %29, %struct.sht3x_data* %30, i32 %33, i8* %17, i32 %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %67

40:                                               ; preds = %25
  %41 = bitcast i8* %17 to i32*
  %42 = call i32 @be16_to_cpup(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 511
  %45 = shl i32 %44, 7
  %46 = call i32 @sht3x_extract_temperature(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 65024
  %49 = call i32 @sht3x_extract_humidity(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.sht3x_data*, %struct.sht3x_data** %3, align 8
  %52 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.sht3x_data*, %struct.sht3x_data** %3, align 8
  %58 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %40
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %21

65:                                               ; preds = %21
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %65, %38
  %68 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sht3x_read_from_command(%struct.i2c_client*, %struct.sht3x_data*, i32, i8*, i32, i32) #2

declare dso_local i32 @be16_to_cpup(i32*) #2

declare dso_local i32 @sht3x_extract_temperature(i32) #2

declare dso_local i32 @sht3x_extract_humidity(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
