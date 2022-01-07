; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756-s4882.c_amd756_access_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd756-s4882.c_amd756_access_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@amd756_lock = common dso_local global i32 0, align 4
@last_channels = common dso_local global i64 0, align 8
@amd756_smbus = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i64, i32, %union.i2c_smbus_data*, i64)* @amd756_access_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd756_access_channel(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i64 %4, i32 %5, %union.i2c_smbus_data* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.i2c_smbus_data*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.i2c_smbus_data, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i16 %2, i16* %12, align 2
  store i8 %3, i8* %13, align 1
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %16, align 8
  store i64 %7, i64* %17, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 76
  br i1 %21, label %22, label %33

22:                                               ; preds = %8
  %23 = load i32, i32* %11, align 4
  %24 = and i32 %23, 252
  %25 = icmp ne i32 %24, 80
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = and i32 %27, 252
  %29 = icmp ne i32 %28, 48
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %69

33:                                               ; preds = %26, %22, %8
  %34 = call i32 @mutex_lock(i32* @amd756_lock)
  %35 = load i64, i64* @last_channels, align 8
  %36 = load i64, i64* %17, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i64, i64* %17, align 8
  %40 = bitcast %union.i2c_smbus_data* %19 to i64*
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd756_smbus, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %42, align 8
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %45 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %46 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %47 = call i32 %43(%struct.i2c_adapter* %44, i32 24, i16 zeroext 0, i8 signext %45, i32 1, i32 %46, %union.i2c_smbus_data* %19)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %66

51:                                               ; preds = %38
  %52 = load i64, i64* %17, align 8
  store i64 %52, i64* @last_channels, align 8
  br label %53

53:                                               ; preds = %51, %33
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amd756_smbus, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)** %55, align 8
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i16, i16* %12, align 2
  %60 = load i8, i8* %13, align 1
  %61 = load i64, i64* %14, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %15, align 4
  %64 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %16, align 8
  %65 = call i32 %56(%struct.i2c_adapter* %57, i32 %58, i16 zeroext %59, i8 signext %60, i32 %62, i32 %63, %union.i2c_smbus_data* %64)
  store i32 %65, i32* %18, align 4
  br label %66

66:                                               ; preds = %53, %50
  %67 = call i32 @mutex_unlock(i32* @amd756_lock)
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %30
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
