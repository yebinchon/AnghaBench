; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_get_scl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_get_scl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.fsi_i2c_port* }
%struct.fsi_i2c_port = type { %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32 }

@I2C_FSI_STAT = common dso_local global i32 0, align 4
@I2C_STAT_SCL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @fsi_i2c_get_scl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_get_scl(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_i2c_port*, align 8
  %5 = alloca %struct.fsi_i2c_master*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 0
  %8 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %7, align 8
  store %struct.fsi_i2c_port* %8, %struct.fsi_i2c_port** %4, align 8
  %9 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %4, align 8
  %10 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %9, i32 0, i32 0
  %11 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %10, align 8
  store %struct.fsi_i2c_master* %11, %struct.fsi_i2c_master** %5, align 8
  %12 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %5, align 8
  %13 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FSI_STAT, align 4
  %16 = call i32 @fsi_i2c_read_reg(i32 %14, i32 %15, i32* %3)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @I2C_STAT_SCL_IN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
