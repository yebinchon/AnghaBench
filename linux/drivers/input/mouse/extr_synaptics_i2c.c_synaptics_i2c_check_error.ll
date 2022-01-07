; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_check_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_i2c.c_synaptics_i2c_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DEVICE_STATUS_REG = common dso_local global i32 0, align 4
@CONFIGURED_MSK = common dso_local global i32 0, align 4
@ERROR_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @synaptics_i2c_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synaptics_i2c_check_error(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = load i32, i32* @DEVICE_STATUS_REG, align 4
  %7 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %5, i32 %6)
  %8 = load i32, i32* @CONFIGURED_MSK, align 4
  %9 = load i32, i32* @ERROR_MSK, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CONFIGURED_MSK, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @synaptics_i2c_reset_config(%struct.i2c_client* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @synaptics_i2c_reset_config(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
