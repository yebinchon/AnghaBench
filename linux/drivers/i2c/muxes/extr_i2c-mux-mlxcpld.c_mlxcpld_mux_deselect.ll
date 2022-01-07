; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_deselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_deselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.mlxcpld_mux = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @mlxcpld_mux_deselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_mux_deselect(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_mux_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxcpld_mux*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %8 = call %struct.mlxcpld_mux* @i2c_mux_priv(%struct.i2c_mux_core* %7)
  store %struct.mlxcpld_mux* %8, %struct.mlxcpld_mux** %5, align 8
  %9 = load %struct.mlxcpld_mux*, %struct.mlxcpld_mux** %5, align 8
  %10 = getelementptr inbounds %struct.mlxcpld_mux, %struct.mlxcpld_mux* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.mlxcpld_mux*, %struct.mlxcpld_mux** %5, align 8
  %13 = getelementptr inbounds %struct.mlxcpld_mux, %struct.mlxcpld_mux* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = load %struct.mlxcpld_mux*, %struct.mlxcpld_mux** %5, align 8
  %19 = getelementptr inbounds %struct.mlxcpld_mux, %struct.mlxcpld_mux* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mlxcpld_mux_reg_write(i32 %16, %struct.i2c_client* %17, i64 %20)
  ret i32 %21
}

declare dso_local %struct.mlxcpld_mux* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @mlxcpld_mux_reg_write(i32, %struct.i2c_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
