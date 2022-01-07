; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = call i64 @__i2c_lock_bus_helper(%struct.i2c_adapter* %17)
  store i64 %18, i64* %16, align 8
  %19 = load i64, i64* %16, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i64, i64* %16, align 8
  store i64 %22, i64* %8, align 8
  br label %36

23:                                               ; preds = %7
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i16, i16* %11, align 2
  %27 = load i8, i8* %12, align 1
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %31 = call i64 @__i2c_smbus_xfer(%struct.i2c_adapter* %24, i32 %25, i16 zeroext %26, i8 signext %27, i32 %28, i32 %29, %union.i2c_smbus_data* %30)
  store i64 %31, i64* %16, align 8
  %32 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %33 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %34 = call i32 @i2c_unlock_bus(%struct.i2c_adapter* %32, i32 %33)
  %35 = load i64, i64* %16, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %23, %21
  %37 = load i64, i64* %8, align 8
  ret i64 %37
}

declare dso_local i64 @__i2c_lock_bus_helper(%struct.i2c_adapter*) #1

declare dso_local i64 @__i2c_smbus_xfer(%struct.i2c_adapter*, i32, i16 zeroext, i8 signext, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @i2c_unlock_bus(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
