; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_int_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_int_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { i32, %struct.auo_pixcir_ts_platdata*, %struct.i2c_client* }
%struct.auo_pixcir_ts_platdata = type { i64 }
%struct.i2c_client = type { i32 }

@AUO_PIXCIR_REG_INT_SETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to read reg %Xh, %d\0A\00", align 1
@AUO_PIXCIR_INT_MODE_MASK = common dso_local global i32 0, align 4
@AUO_PIXCIR_INT_POL_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to write reg %Xh, %d\0A\00", align 1
@AUO_PIXCIR_INT_TOUCH_IND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auo_pixcir_ts*, i32)* @auo_pixcir_int_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_int_config(%struct.auo_pixcir_ts* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auo_pixcir_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.auo_pixcir_ts_platdata*, align 8
  %8 = alloca i32, align 4
  store %struct.auo_pixcir_ts* %0, %struct.auo_pixcir_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %10 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %9, i32 0, i32 2
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %13 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %12, i32 0, i32 1
  %14 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %13, align 8
  store %struct.auo_pixcir_ts_platdata* %14, %struct.auo_pixcir_ts_platdata** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = load i32, i32* @AUO_PIXCIR_REG_INT_SETTING, align 4
  %17 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* @AUO_PIXCIR_REG_INT_SETTING, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %60

27:                                               ; preds = %2
  %28 = load i32, i32* @AUO_PIXCIR_INT_MODE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @AUO_PIXCIR_INT_POL_HIGH, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = load i32, i32* @AUO_PIXCIR_REG_INT_SETTING, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %27
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* @AUO_PIXCIR_REG_INT_SETTING, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %27
  %52 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %7, align 8
  %53 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AUO_PIXCIR_INT_TOUCH_IND, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %59 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %44, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
