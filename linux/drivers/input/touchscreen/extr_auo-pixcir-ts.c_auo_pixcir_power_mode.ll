; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@AUO_PIXCIR_REG_POWER_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to read reg %Xh, %d\0A\00", align 1
@AUO_PIXCIR_POWER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to write reg %Xh, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auo_pixcir_ts*, i32)* @auo_pixcir_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_power_mode(%struct.auo_pixcir_ts* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auo_pixcir_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.auo_pixcir_ts* %0, %struct.auo_pixcir_ts** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %4, align 8
  %9 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = load i32, i32* @AUO_PIXCIR_REG_POWER_MODE, align 4
  %13 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @AUO_PIXCIR_REG_POWER_MODE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load i32, i32* @AUO_PIXCIR_POWER_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @AUO_PIXCIR_REG_POWER_MODE, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* @AUO_PIXCIR_REG_POWER_MODE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
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
