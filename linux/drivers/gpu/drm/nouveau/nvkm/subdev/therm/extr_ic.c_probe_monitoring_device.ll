; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_ic.c_probe_monitoring_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_ic.c_probe_monitoring_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.nvkm_therm = type { %struct.i2c_client*, i32, %struct.nvbios_therm_sensor }
%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvbios_therm_sensor = type { i32 }
%struct.TYPE_4__ = type { i64 (%struct.i2c_client*, %struct.i2c_board_info*)* }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@I2C_MODULE_PREFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Found an %s at address 0x%x (controlled by lm_sensors, temp offset %+i C)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_bus*, %struct.i2c_board_info*, i8*)* @probe_monitoring_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_monitoring_device(%struct.nvkm_i2c_bus* %0, %struct.i2c_board_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_i2c_bus*, align 8
  %6 = alloca %struct.i2c_board_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvkm_therm*, align 8
  %9 = alloca %struct.nvbios_therm_sensor*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  store %struct.nvkm_i2c_bus* %0, %struct.nvkm_i2c_bus** %5, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.nvkm_therm*
  store %struct.nvkm_therm* %12, %struct.nvkm_therm** %8, align 8
  %13 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %13, i32 0, i32 2
  store %struct.nvbios_therm_sensor* %14, %struct.nvbios_therm_sensor** %9, align 8
  %15 = load i32, i32* @I2C_MODULE_PREFIX, align 4
  %16 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @request_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %20, i32 0, i32 0
  %22 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %23 = call %struct.i2c_client* @i2c_new_device(i32* %21, %struct.i2c_board_info* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %10, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %25 = icmp ne %struct.i2c_client* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_4__* @to_i2c_driver(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64 (%struct.i2c_client*, %struct.i2c_board_info*)*, i64 (%struct.i2c_client*, %struct.i2c_board_info*)** %39, align 8
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %43 = call i64 %40(%struct.i2c_client* %41, %struct.i2c_board_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33, %27
  %46 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %47 = call i32 @i2c_unregister_device(%struct.i2c_client* %46)
  store i32 0, i32* %4, align 4
  br label %64

48:                                               ; preds = %33
  %49 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %50 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %49, i32 0, i32 1
  %51 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i2c_board_info*, %struct.i2c_board_info** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvbios_therm_sensor*, %struct.nvbios_therm_sensor** %9, align 8
  %58 = getelementptr inbounds %struct.nvbios_therm_sensor, %struct.nvbios_therm_sensor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nvkm_debug(i32* %50, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = load %struct.nvkm_therm*, %struct.nvkm_therm** %8, align 8
  %63 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %62, i32 0, i32 0
  store %struct.i2c_client* %61, %struct.i2c_client** %63, align 8
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %48, %45, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @request_module(i8*, i32, i32) #1

declare dso_local %struct.i2c_client* @i2c_new_device(i32*, %struct.i2c_board_info*) #1

declare dso_local %struct.TYPE_4__* @to_i2c_driver(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.i2c_client*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
