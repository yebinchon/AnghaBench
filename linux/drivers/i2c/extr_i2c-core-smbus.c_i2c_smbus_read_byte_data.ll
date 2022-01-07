; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_byte_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_byte_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.i2c_smbus_data, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @I2C_SMBUS_READ, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %19 = call i32 @i2c_smbus_xfer(i32 %9, i32 %12, i32 %15, i32 %16, i32 %17, i32 %18, %union.i2c_smbus_data* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  br label %27

24:                                               ; preds = %2
  %25 = bitcast %union.i2c_smbus_data* %5 to i32*
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  ret i32 %28
}

declare dso_local i32 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
