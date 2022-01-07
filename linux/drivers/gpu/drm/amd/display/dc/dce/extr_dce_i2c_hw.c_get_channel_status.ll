; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_channel_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_get_channel_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@DC_I2C_SW_STATUS = common dso_local global i32 0, align 4
@DC_I2C_STATUS__DC_I2C_STATUS_USED_BY_SW = common dso_local global i64 0, align 8
@I2C_CHANNEL_OPERATION_ENGINE_BUSY = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_NO_RESPONSE = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_TIMEOUT = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_FAILED = common dso_local global i32 0, align 4
@I2C_CHANNEL_OPERATION_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_i2c_hw*, i32*)* @get_channel_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_channel_status(%struct.dce_i2c_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_i2c_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %9 = load i32, i32* @DC_I2C_SW_STATUS, align 4
  %10 = call i64 @REG_GET(i32 %8, i32 %9, i64* %6)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @DC_I2C_STATUS__DC_I2C_STATUS_USED_BY_SW, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @I2C_CHANNEL_OPERATION_ENGINE_BUSY, align 4
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %19 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %17, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @I2C_CHANNEL_OPERATION_NO_RESPONSE, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %30 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %28, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @I2C_CHANNEL_OPERATION_TIMEOUT, align 4
  store i32 %37, i32* %3, align 4
  br label %66

38:                                               ; preds = %27
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %41 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %39, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @I2C_CHANNEL_OPERATION_FAILED, align 4
  store i32 %48, i32* %3, align 4
  br label %66

49:                                               ; preds = %38
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %4, align 8
  %52 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %50, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @I2C_CHANNEL_OPERATION_SUCCEEDED, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @I2C_CHANNEL_OPERATION_SUCCEEDED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %58, %47, %36, %25, %14
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
