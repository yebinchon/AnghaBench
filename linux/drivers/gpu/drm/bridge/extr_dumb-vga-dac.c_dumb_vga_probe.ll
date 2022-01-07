; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_dumb-vga-dac.c_dumb_vga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dumb_vga = type { %struct.TYPE_9__, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No vdd regulator found: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"No i2c bus specified. Disabling EDID readout\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't retrieve i2c bus\0A\00", align 1
@dumb_vga_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dumb_vga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumb_vga_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dumb_vga*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dumb_vga* @devm_kzalloc(%struct.TYPE_8__* %7, i32 32, i32 %8)
  store %struct.dumb_vga* %9, %struct.dumb_vga** %4, align 8
  %10 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %11 = icmp ne %struct.dumb_vga* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.dumb_vga* %17)
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32* @devm_regulator_get_optional(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %23 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %25 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %15
  %30 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %31 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @PTR_ERR(i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %102

41:                                               ; preds = %29
  %42 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %43 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_dbg(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %15
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32* @dumb_vga_retrieve_ddc(%struct.TYPE_8__* %50)
  %52 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %53 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %55 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %48
  %60 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %61 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @PTR_ERR(i32* %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_dbg(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %72 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  br label %81

73:                                               ; preds = %59
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_err(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %77 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %78 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @PTR_ERR(i32* %79)
  store i32 %80, i32* %2, align 4
  br label %102

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %48
  %83 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %84 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  store i32* @dumb_vga_bridge_funcs, i32** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %91 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @of_device_get_match_data(%struct.TYPE_8__* %94)
  %96 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %97 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.dumb_vga*, %struct.dumb_vga** %4, align 8
  %100 = getelementptr inbounds %struct.dumb_vga, %struct.dumb_vga* %99, i32 0, i32 0
  %101 = call i32 @drm_bridge_add(%struct.TYPE_9__* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %82, %73, %38, %12
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.dumb_vga* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dumb_vga*) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32* @dumb_vga_retrieve_ddc(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
