; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_create_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/iccsense/extr_base.c_nvkm_iccsense_create_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_iccsense_sensor = type { i32, i32, i8*, i32*, i8*, i32 }
%struct.nvkm_iccsense = type { i32, i32, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_i2c*, %struct.nvkm_bios* }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_extdev_func = type { i32, i32, i64 }
%struct.nvkm_i2c_bus = type { i32 }

@NVBIOS_EXTDEV_INA209 = common dso_local global i32 0, align 4
@NVBIOS_EXTDEV_INA219 = common dso_local global i32 0, align 4
@NVBIOS_EXTDEV_INA3221 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unknown sensor type %x, power reading disabled\0A\00", align 1
@NVKM_I2C_BUS_SEC = common dso_local global i32 0, align 4
@NVKM_I2C_BUS_PRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"found invalid sensor id: %i, power readingmight be invalid\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_iccsense_sensor* (%struct.nvkm_iccsense*, i8*)* @nvkm_iccsense_create_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_iccsense_sensor* @nvkm_iccsense_create_sensor(%struct.nvkm_iccsense* %0, i8* %1) #0 {
  %3 = alloca %struct.nvkm_iccsense_sensor*, align 8
  %4 = alloca %struct.nvkm_iccsense*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca %struct.nvkm_i2c*, align 8
  %9 = alloca %struct.nvbios_extdev_func, align 8
  %10 = alloca %struct.nvkm_i2c_bus*, align 8
  %11 = alloca %struct.nvkm_iccsense_sensor*, align 8
  %12 = alloca i8*, align 8
  store %struct.nvkm_iccsense* %0, %struct.nvkm_iccsense** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %13, i32 0, i32 2
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %6, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %18, align 8
  store %struct.nvkm_bios* %19, %struct.nvkm_bios** %7, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %23, align 8
  store %struct.nvkm_i2c* %24, %struct.nvkm_i2c** %8, align 8
  %25 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %8, align 8
  %26 = icmp ne %struct.nvkm_i2c* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %29 = icmp ne %struct.nvkm_bios* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @nvbios_extdev_parse(%struct.nvkm_bios* %31, i8* %32, %struct.nvbios_extdev_func* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27, %2
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NVBIOS_EXTDEV_INA209, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NVBIOS_EXTDEV_INA219, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @NVBIOS_EXTDEV_INA3221, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %58 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %60 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @nvkm_error(%struct.nvkm_subdev* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %61)
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

63:                                               ; preds = %51, %46, %41
  %64 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %8, align 8
  %69 = load i32, i32* @NVKM_I2C_BUS_SEC, align 4
  %70 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %68, i32 %69)
  store %struct.nvkm_i2c_bus* %70, %struct.nvkm_i2c_bus** %10, align 8
  br label %75

71:                                               ; preds = %63
  %72 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %8, align 8
  %73 = load i32, i32* @NVKM_I2C_BUS_PRI, align 4
  %74 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %72, i32 %73)
  store %struct.nvkm_i2c_bus* %74, %struct.nvkm_i2c_bus** %10, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %10, align 8
  %77 = icmp ne %struct.nvkm_i2c_bus* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %12, align 8
  %85 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %10, align 8
  %86 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %85, i32 0, i32 0
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @nvkm_iccsense_validate_device(i32* %86, i8* %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %79
  %93 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %94 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @nvkm_warn(%struct.nvkm_subdev* %95, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

98:                                               ; preds = %79
  %99 = load i32, i32* @GFP_KERNEL, align 4
  %100 = call %struct.nvkm_iccsense_sensor* @kmalloc(i32 40, i32 %99)
  store %struct.nvkm_iccsense_sensor* %100, %struct.nvkm_iccsense_sensor** %11, align 8
  %101 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %102 = icmp ne %struct.nvkm_iccsense_sensor* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store %struct.nvkm_iccsense_sensor* null, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

104:                                              ; preds = %98
  %105 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %106 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %105, i32 0, i32 5
  %107 = load %struct.nvkm_iccsense*, %struct.nvkm_iccsense** %4, align 8
  %108 = getelementptr inbounds %struct.nvkm_iccsense, %struct.nvkm_iccsense* %107, i32 0, i32 1
  %109 = call i32 @list_add_tail(i32* %106, i32* %108)
  %110 = load i8*, i8** %5, align 8
  %111 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %112 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = getelementptr inbounds %struct.nvbios_extdev_func, %struct.nvbios_extdev_func* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %116 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %10, align 8
  %118 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %117, i32 0, i32 0
  %119 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %120 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %123 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  %125 = getelementptr inbounds %struct.nvkm_iccsense_sensor, %struct.nvkm_iccsense_sensor* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %11, align 8
  store %struct.nvkm_iccsense_sensor* %126, %struct.nvkm_iccsense_sensor** %3, align 8
  br label %127

127:                                              ; preds = %104, %103, %92, %78, %56, %40, %35
  %128 = load %struct.nvkm_iccsense_sensor*, %struct.nvkm_iccsense_sensor** %3, align 8
  ret %struct.nvkm_iccsense_sensor* %128
}

declare dso_local i64 @nvbios_extdev_parse(%struct.nvkm_bios*, i8*, %struct.nvbios_extdev_func*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @nvkm_iccsense_validate_device(i32*, i8*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i8*) #1

declare dso_local %struct.nvkm_iccsense_sensor* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
