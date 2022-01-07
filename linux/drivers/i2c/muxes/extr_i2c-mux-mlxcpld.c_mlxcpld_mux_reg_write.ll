; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_client = type { i32, i32, i32 }
%struct.mlxcpld_mux_plat_data = type { i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_client*, i32)* @mlxcpld_mux_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_mux_reg_write(%struct.i2c_adapter* %0, %struct.i2c_client* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxcpld_mux_plat_data*, align 8
  %8 = alloca %union.i2c_smbus_data, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = call %struct.mlxcpld_mux_plat_data* @dev_get_platdata(i32* %10)
  store %struct.mlxcpld_mux_plat_data* %11, %struct.mlxcpld_mux_plat_data** %7, align 8
  %12 = bitcast %union.i2c_smbus_data* %8 to i32*
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %22 = load %struct.mlxcpld_mux_plat_data*, %struct.mlxcpld_mux_plat_data** %7, align 8
  %23 = getelementptr inbounds %struct.mlxcpld_mux_plat_data, %struct.mlxcpld_mux_plat_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %26 = call i32 @__i2c_smbus_xfer(%struct.i2c_adapter* %14, i32 %17, i32 %20, i32 %21, i32 %24, i32 %25, %union.i2c_smbus_data* %8)
  ret i32 %26
}

declare dso_local %struct.mlxcpld_mux_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @__i2c_smbus_xfer(%struct.i2c_adapter*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
