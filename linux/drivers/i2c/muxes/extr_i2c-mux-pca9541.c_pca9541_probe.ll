; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca9541.c_pca9541_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.i2c_mux_core = type { i32 }
%struct.pca9541 = type { %struct.i2c_client* }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I2C_LOCK_SEGMENT = common dso_local global i32 0, align 4
@I2C_MUX_ARBITRATOR = common dso_local global i32 0, align 4
@pca9541_select_chan = common dso_local global i32 0, align 4
@pca9541_release_chan = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"registered master selector for I2C %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca9541_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca9541_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_mux_core*, align 8
  %8 = alloca %struct.pca9541*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %23 = call i32 @i2c_lock_bus(%struct.i2c_adapter* %21, i32 %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @pca9541_release_bus(%struct.i2c_client* %24)
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %27 = load i32, i32* @I2C_LOCK_SEGMENT, align 4
  %28 = call i32 @i2c_unlock_bus(%struct.i2c_adapter* %26, i32 %27)
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load i32, i32* @I2C_MUX_ARBITRATOR, align 4
  %33 = load i32, i32* @pca9541_select_chan, align 4
  %34 = load i32, i32* @pca9541_release_chan, align 4
  %35 = call %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter* %29, i32* %31, i32 1, i32 8, i32 %32, i32 %33, i32 %34)
  store %struct.i2c_mux_core* %35, %struct.i2c_mux_core** %7, align 8
  %36 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %37 = icmp ne %struct.i2c_mux_core* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %63

41:                                               ; preds = %20
  %42 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %43 = call %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core* %42)
  store %struct.pca9541* %43, %struct.pca9541** %8, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.pca9541*, %struct.pca9541** %8, align 8
  %46 = getelementptr inbounds %struct.pca9541, %struct.pca9541* %45, i32 0, i32 0
  store %struct.i2c_client* %44, %struct.i2c_client** %46, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %49 = call i32 @i2c_set_clientdata(%struct.i2c_client* %47, %struct.i2c_mux_core* %48)
  %50 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %7, align 8
  %51 = call i32 @i2c_mux_add_adapter(%struct.i2c_mux_core* %50, i32 0, i32 0, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %41
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %56, %54, %38, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_lock_bus(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pca9541_release_bus(%struct.i2c_client*) #1

declare dso_local i32 @i2c_unlock_bus(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.i2c_mux_core* @i2c_mux_alloc(%struct.i2c_adapter*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.pca9541* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.i2c_mux_core*) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.i2c_mux_core*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
