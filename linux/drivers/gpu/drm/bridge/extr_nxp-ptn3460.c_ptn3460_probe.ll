; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_nxp-ptn3460.c_ptn3460_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ptn3460_bridge = type { %struct.TYPE_2__, i32, i8*, i8*, %struct.i2c_client*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot get gpio_pd_n %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot get gpio_rst_n %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"edid-emulation\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Can't read EDID emulation value\0A\00", align 1
@ptn3460_bridge_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ptn3460_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptn3460_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ptn3460_bridge*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ptn3460_bridge* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.ptn3460_bridge* %13, %struct.ptn3460_bridge** %7, align 8
  %14 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %15 = icmp ne %struct.ptn3460_bridge* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %24 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %23, i32 0, i32 5
  %25 = call i32 @drm_of_find_panel_or_bridge(i32 %22, i32 0, i32 0, i32* %24, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %103

30:                                               ; preds = %19
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %33 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %32, i32 0, i32 4
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %37 = call i8* @devm_gpiod_get(%struct.device* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %39 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %41 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @IS_ERR(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %30
  %46 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %47 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @PTR_ERR(i8* %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %103

54:                                               ; preds = %30
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %58 = call i8* @devm_gpiod_get(%struct.device* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %60 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %62 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %68 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %103

74:                                               ; preds = %54
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %79 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %78, i32 0, i32 1
  %80 = call i32 @of_property_read_u32(i32 %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %6, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %103

87:                                               ; preds = %74
  %88 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %89 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32* @ptn3460_bridge_funcs, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = getelementptr inbounds %struct.device, %struct.device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %95 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %98 = getelementptr inbounds %struct.ptn3460_bridge, %struct.ptn3460_bridge* %97, i32 0, i32 0
  %99 = call i32 @drm_bridge_add(%struct.TYPE_2__* %98)
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = load %struct.ptn3460_bridge*, %struct.ptn3460_bridge** %7, align 8
  %102 = call i32 @i2c_set_clientdata(%struct.i2c_client* %100, %struct.ptn3460_bridge* %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %87, %83, %66, %45, %28, %16
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.ptn3460_bridge* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @drm_bridge_add(%struct.TYPE_2__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ptn3460_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
