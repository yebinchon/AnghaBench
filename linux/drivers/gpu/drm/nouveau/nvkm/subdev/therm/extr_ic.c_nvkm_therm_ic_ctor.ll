; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_ic.c_nvkm_therm_ic_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_ic.c_nvkm_therm_ic_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus_probe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_therm = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_i2c*, %struct.nvkm_bios* }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nvbios_extdev_func = type { i32 }

@NVKM_I2C_BUS_PRI = common dso_local global i32 0, align 4
@NVBIOS_EXTDEV_LM89 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm90\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"monitoring device\00", align 1
@probe_monitoring_device = common dso_local global i32 0, align 4
@NVBIOS_EXTDEV_ADT7473 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"adt7473\00", align 1
@nv_board_infos = common dso_local global %struct.nvkm_i2c_bus_probe* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_ic_ctor(%struct.nvkm_therm* %0) #0 {
  %2 = alloca %struct.nvkm_therm*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_bios*, align 8
  %5 = alloca %struct.nvkm_i2c*, align 8
  %6 = alloca %struct.nvkm_i2c_bus*, align 8
  %7 = alloca %struct.nvbios_extdev_func, align 4
  %8 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 16
  %9 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 16
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %2, align 8
  %10 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %3, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 1
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %15, align 8
  store %struct.nvkm_bios* %16, %struct.nvkm_bios** %4, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %18, align 8
  store %struct.nvkm_i2c* %19, %struct.nvkm_i2c** %5, align 8
  %20 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %5, align 8
  %21 = load i32, i32* @NVKM_I2C_BUS_PRI, align 4
  %22 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %20, i32 %21)
  store %struct.nvkm_i2c_bus* %22, %struct.nvkm_i2c_bus** %6, align 8
  %23 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %24 = icmp ne %struct.nvkm_i2c_bus* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %28 = load i32, i32* @NVBIOS_EXTDEV_LM89, align 4
  %29 = call i32 @nvbios_extdev_find(%struct.nvkm_bios* %27, i32 %28, %struct.nvbios_extdev_func* %7)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x %struct.nvkm_i2c_bus_probe], [2 x %struct.nvkm_i2c_bus_probe]* %8, i64 0, i64 0
  %33 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 1
  %37 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %33, align 8
  %38 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %32, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %32, i64 1
  %41 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %40, i32 0, i32 1
  %43 = bitcast %struct.TYPE_4__* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %43, i8 0, i64 4, i1 false)
  %44 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %45 = getelementptr inbounds [2 x %struct.nvkm_i2c_bus_probe], [2 x %struct.nvkm_i2c_bus_probe]* %8, i64 0, i64 0
  %46 = load i32, i32* @probe_monitoring_device, align 4
  %47 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %48 = call i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.nvkm_i2c_bus_probe* %45, i32 %46, %struct.nvkm_therm* %47)
  %49 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %50 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %95

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %57 = load i32, i32* @NVBIOS_EXTDEV_ADT7473, align 4
  %58 = call i32 @nvbios_extdev_find(%struct.nvkm_bios* %56, i32 %57, %struct.nvbios_extdev_func* %7)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds [2 x %struct.nvkm_i2c_bus_probe], [2 x %struct.nvkm_i2c_bus_probe]* %9, i64 0, i64 0
  %62 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 1
  %66 = call i32 @I2C_BOARD_INFO(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 %66, i32* %62, align 8
  %67 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %61, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 20, i32* %68, align 4
  %69 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %61, i64 1
  %70 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds %struct.nvkm_i2c_bus_probe, %struct.nvkm_i2c_bus_probe* %69, i32 0, i32 1
  %72 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %72, i8 0, i64 4, i1 false)
  %73 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %74 = getelementptr inbounds [2 x %struct.nvkm_i2c_bus_probe], [2 x %struct.nvkm_i2c_bus_probe]* %9, i64 0, i64 0
  %75 = load i32, i32* @probe_monitoring_device, align 4
  %76 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %77 = call i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.nvkm_i2c_bus_probe* %74, i32 %75, %struct.nvkm_therm* %76)
  %78 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %79 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  br label %95

83:                                               ; preds = %60
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %4, align 8
  %86 = call i64 @nvbios_extdev_skip_probe(%struct.nvkm_bios* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %95

89:                                               ; preds = %84
  %90 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %6, align 8
  %91 = load %struct.nvkm_i2c_bus_probe*, %struct.nvkm_i2c_bus_probe** @nv_board_infos, align 8
  %92 = load i32, i32* @probe_monitoring_device, align 4
  %93 = load %struct.nvkm_therm*, %struct.nvkm_therm** %2, align 8
  %94 = call i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.nvkm_i2c_bus_probe* %91, i32 %92, %struct.nvkm_therm* %93)
  br label %95

95:                                               ; preds = %89, %88, %82, %53, %25
  ret void
}

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @nvbios_extdev_find(%struct.nvkm_bios*, i32, %struct.nvbios_extdev_func*) #1

declare dso_local i32 @I2C_BOARD_INFO(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvkm_i2c_bus_probe(%struct.nvkm_i2c_bus*, i8*, %struct.nvkm_i2c_bus_probe*, i32, %struct.nvkm_therm*) #1

declare dso_local i64 @nvbios_extdev_skip_probe(%struct.nvkm_bios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
