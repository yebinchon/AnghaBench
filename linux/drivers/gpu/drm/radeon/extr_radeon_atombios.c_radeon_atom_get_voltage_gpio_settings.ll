; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_gpio_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atom_get_voltage_gpio_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%union.set_voltage = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i32 }

@COMMAND = common dso_local global i32 0, align 4
@SetVoltage = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SET_ASIC_VOLTAGE_MODE_GET_GPIOMASK = common dso_local global i32 0, align 4
@SET_ASIC_VOLTAGE_MODE_GET_GPIOVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown table version %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_atom_get_voltage_gpio_settings(%struct.radeon_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %union.set_voltage, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @COMMAND, align 4
  %17 = load i32, i32* @SetVoltage, align 4
  %18 = call i32 @GetIndexIntoMasterTable(i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @atom_parse_cmd_header(i32 %22, i32 %23, i32* %14, i32* %15)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %86

29:                                               ; preds = %5
  %30 = load i32, i32* %15, align 4
  switch i32 %30, label %79 [
    i32 1, label %31
    i32 2, label %34
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %86

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @SET_ASIC_VOLTAGE_MODE_GET_GPIOMASK, align 4
  %39 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = bitcast %union.set_voltage* %12 to i32*
  %51 = call i32 @atom_execute_table(i32 %48, i32 %49, i32* %50)
  %52 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %53 = bitcast %struct.TYPE_4__* %52 to i32*
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @SET_ASIC_VOLTAGE_MODE_GET_GPIOVAL, align 4
  %61 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = bitcast %union.set_voltage* %12 to i32*
  %73 = call i32 @atom_execute_table(i32 %70, i32 %71, i32* %72)
  %74 = bitcast %union.set_voltage* %12 to %struct.TYPE_4__*
  %75 = bitcast %struct.TYPE_4__* %74 to i32*
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %85

79:                                               ; preds = %29
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %86

85:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %79, %31, %26
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
