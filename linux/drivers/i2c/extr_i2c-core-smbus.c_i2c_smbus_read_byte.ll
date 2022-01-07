; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_smbus_read_byte(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %union.i2c_smbus_data, align 4
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I2C_SMBUS_READ, align 4
  %15 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %16 = call i32 @i2c_smbus_xfer(i32 %7, i32 %10, i32 %13, i32 %14, i32 0, i32 %15, %union.i2c_smbus_data* %3)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  br label %24

21:                                               ; preds = %1
  %22 = bitcast %union.i2c_smbus_data* %3 to i32*
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  ret i32 %25
}

declare dso_local i32 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
