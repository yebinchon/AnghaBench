; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_set_sda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_set_sda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.fsi_i2c_port* }
%struct.fsi_i2c_port = type { %struct.fsi_i2c_master* }
%struct.fsi_i2c_master = type { i32 }

@I2C_FSI_SET_SDA = common dso_local global i32 0, align 4
@I2C_FSI_RESET_SDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, i32)* @fsi_i2c_set_sda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_i2c_set_sda(%struct.i2c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_i2c_port*, align 8
  %7 = alloca %struct.fsi_i2c_master*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %8, i32 0, i32 0
  %10 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %9, align 8
  store %struct.fsi_i2c_port* %10, %struct.fsi_i2c_port** %6, align 8
  %11 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %6, align 8
  %12 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %11, i32 0, i32 0
  %13 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %12, align 8
  store %struct.fsi_i2c_master* %13, %struct.fsi_i2c_master** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %7, align 8
  %18 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_FSI_SET_SDA, align 4
  %21 = call i32 @fsi_i2c_write_reg(i32 %19, i32 %20, i32* %5)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.fsi_i2c_master*, %struct.fsi_i2c_master** %7, align 8
  %24 = getelementptr inbounds %struct.fsi_i2c_master, %struct.fsi_i2c_master* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I2C_FSI_RESET_SDA, align 4
  %27 = call i32 @fsi_i2c_write_reg(i32 %25, i32 %26, i32* %5)
  br label %28

28:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @fsi_i2c_write_reg(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
