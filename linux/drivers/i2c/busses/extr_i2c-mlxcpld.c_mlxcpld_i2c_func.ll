; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.mlxcpld_i2c_priv = type { i64 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_EMUL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BLOCK_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @mlxcpld_i2c_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_func(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.mlxcpld_i2c_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %6 = call %struct.mlxcpld_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter* %5)
  store %struct.mlxcpld_i2c_priv* %6, %struct.mlxcpld_i2c_priv** %4, align 8
  %7 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BLOCK_DATA, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @I2C_FUNC_I2C, align 4
  %21 = load i32, i32* @I2C_FUNC_SMBUS_EMUL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.mlxcpld_i2c_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
