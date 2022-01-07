; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-cbus-gpio.c_cbus_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.cbus_host = type { i32 }

@I2C_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @cbus_i2c_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbus_i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.cbus_host*, align 8
  %17 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %19 = call %struct.cbus_host* @i2c_get_adapdata(%struct.i2c_adapter* %18)
  store %struct.cbus_host* %19, %struct.cbus_host** %16, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @I2C_SMBUS_WORD_DATA, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %55

26:                                               ; preds = %7
  %27 = load %struct.cbus_host*, %struct.cbus_host** %16, align 8
  %28 = load i8, i8* %12, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @I2C_SMBUS_READ, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %37 = bitcast %union.i2c_smbus_data* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cbus_transfer(%struct.cbus_host* %27, i32 %33, i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %8, align 4
  br label %55

44:                                               ; preds = %26
  %45 = load i8, i8* %12, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @I2C_SMBUS_READ, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %17, align 4
  %52 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %53 = bitcast %union.i2c_smbus_data* %52 to i32*
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %44
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %42, %23
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.cbus_host* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @cbus_transfer(%struct.cbus_host*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
