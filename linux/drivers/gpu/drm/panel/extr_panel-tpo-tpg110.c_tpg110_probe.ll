; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-tpo-tpg110.c_tpg110_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.tpg110 = type { %struct.TYPE_3__, %struct.spi_device*, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_3__ = type { i32*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"width-mm\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no panel width specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"height-mm\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"no panel height specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"grestb\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"no GRESTB GPIO\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SPI_3WIRE_HIZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@tpg110_drm_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tpg110_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg110_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.tpg110*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 2
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tpg110* @devm_kzalloc(%struct.device* %13, i32 48, i32 %14)
  store %struct.tpg110* %15, %struct.tpg110** %6, align 8
  %16 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %17 = icmp ne %struct.tpg110* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %24 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %23, i32 0, i32 6
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %27 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %26, i32 0, i32 5
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @DRM_DEV_ERROR(%struct.device* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %21
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %37 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %36, i32 0, i32 4
  %38 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @DRM_DEV_ERROR(%struct.device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @devm_of_find_backlight(%struct.device* %45)
  %47 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %48 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %50 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %56 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %118

59:                                               ; preds = %44
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %62 = call i32 @devm_gpiod_get(%struct.device* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %64 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %66 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @DRM_DEV_ERROR(%struct.device* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %118

75:                                               ; preds = %59
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 0
  store i32 8, i32* %77, align 8
  %78 = load i32, i32* @SPI_3WIRE_HIZ, align 4
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %84 = call i32 @spi_setup(%struct.spi_device* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @DRM_DEV_ERROR(%struct.device* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %118

91:                                               ; preds = %75
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %94 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %93, i32 0, i32 1
  store %struct.spi_device* %92, %struct.spi_device** %94, align 8
  %95 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %96 = call i32 @tpg110_startup(%struct.tpg110* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %118

101:                                              ; preds = %91
  %102 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %103 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %102, i32 0, i32 0
  %104 = call i32 @drm_panel_init(%struct.TYPE_3__* %103)
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %107 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store %struct.device* %105, %struct.device** %108, align 8
  %109 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %110 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i32* @tpg110_drm_funcs, i32** %111, align 8
  %112 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %113 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %114 = call i32 @spi_set_drvdata(%struct.spi_device* %112, %struct.tpg110* %113)
  %115 = load %struct.tpg110*, %struct.tpg110** %6, align 8
  %116 = getelementptr inbounds %struct.tpg110, %struct.tpg110* %115, i32 0, i32 0
  %117 = call i32 @drm_panel_add(%struct.TYPE_3__* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %101, %99, %87, %70, %54, %18
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.tpg110* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @devm_of_find_backlight(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @tpg110_startup(%struct.tpg110*) #1

declare dso_local i32 @drm_panel_init(%struct.TYPE_3__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tpg110*) #1

declare dso_local i32 @drm_panel_add(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
