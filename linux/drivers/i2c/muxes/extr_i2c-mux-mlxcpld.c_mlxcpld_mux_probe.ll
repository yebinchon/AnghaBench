; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-mlxcpld.c_mlxcpld_mux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mlxcpld_mux_plat_data = type { i32, i32* }
%struct.i2c_mux_core = type { i32 }
%struct.mlxcpld_mux = type { i64, %struct.i2c_client* }

@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CPLD_MUX_MAX_NCHANS = common dso_local global i32 0, align 4
@mlxcpld_mux_select_chan = common dso_local global i32 0, align 4
@mlxcpld_mux_deselect = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mlxcpld_mux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_mux_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.mlxcpld_mux_plat_data*, align 8
  %8 = alloca %struct.i2c_mux_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxcpld_mux*, align 8
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call %struct.mlxcpld_mux_plat_data* @dev_get_platdata(i32* %17)
  store %struct.mlxcpld_mux_plat_data* %18, %struct.mlxcpld_mux_plat_data** %7, align 8
  %19 = load %struct.mlxcpld_mux_plat_data*, %struct.mlxcpld_mux_plat_data** %7, align 8
  %20 = icmp ne %struct.mlxcpld_mux_plat_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %2
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %26 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %27 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %24
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* @CPLD_MUX_MAX_NCHANS, align 4
  %37 = load i32, i32* @mlxcpld_mux_select_chan, align 4
  %38 = load i32, i32* @mlxcpld_mux_deselect, align 4
  %39 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %33, i32* %35, i32 %36, i32 16, i32 0, i32 %37, i32 %38)
  store %struct.i2c_mux_core* %39, %struct.i2c_mux_core** %8, align 8
  %40 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %41 = icmp ne %struct.i2c_mux_core* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %91

45:                                               ; preds = %32
  %46 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %47 = call %struct.mlxcpld_mux* @i2c_mux_priv(%struct.i2c_mux_core* %46)
  store %struct.mlxcpld_mux* %47, %struct.mlxcpld_mux** %11, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %50 = call i32 @i2c_set_clientdata(%struct.i2c_client* %48, %struct.i2c_mux_core* %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.mlxcpld_mux*, %struct.mlxcpld_mux** %11, align 8
  %53 = getelementptr inbounds %struct.mlxcpld_mux, %struct.mlxcpld_mux* %52, i32 0, i32 1
  store %struct.i2c_client* %51, %struct.i2c_client** %53, align 8
  %54 = load %struct.mlxcpld_mux*, %struct.mlxcpld_mux** %11, align 8
  %55 = getelementptr inbounds %struct.mlxcpld_mux, %struct.mlxcpld_mux* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %83, %45
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @CPLD_MUX_MAX_NCHANS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.mlxcpld_mux_plat_data*, %struct.mlxcpld_mux_plat_data** %7, align 8
  %63 = getelementptr inbounds %struct.mlxcpld_mux_plat_data, %struct.mlxcpld_mux_plat_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %86

67:                                               ; preds = %60
  %68 = load %struct.mlxcpld_mux_plat_data*, %struct.mlxcpld_mux_plat_data** %7, align 8
  %69 = getelementptr inbounds %struct.mlxcpld_mux_plat_data, %struct.mlxcpld_mux_plat_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %75, i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  br label %87

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %56

86:                                               ; preds = %66, %56
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %81
  %88 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %8, align 8
  %89 = call i32 @i2c_mux_del_adapters(%struct.i2c_mux_core* %88)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %86, %42, %29, %21
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.mlxcpld_mux_plat_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.mlxcpld_mux* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_del_adapters(%struct.i2c_mux_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
