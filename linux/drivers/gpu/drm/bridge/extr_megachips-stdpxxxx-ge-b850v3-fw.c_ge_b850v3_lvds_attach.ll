; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.i2c_client*, %struct.drm_connector }
%struct.i2c_client = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_bridge = type { i32, i32 }

@ge_b850v3_lvds_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Parent encoder object not found\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@ge_b850v3_lvds_connector_helper_funcs = common dso_local global i32 0, align 4
@ge_b850v3_lvds_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to initialize connector with drm\0A\00", align 1
@STDP4028_IRQ_OUT_CONF_REG = common dso_local global i32 0, align 4
@STDP4028_DPTX_DP_IRQ_EN = common dso_local global i32 0, align 4
@STDP4028_DPTX_IRQ_EN_REG = common dso_local global i32 0, align 4
@STDP4028_DPTX_IRQ_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @ge_b850v3_lvds_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ge_b850v3_lvds_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.drm_connector* %8, %struct.drm_connector** %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = call i32 @drm_connector_helper_add(%struct.drm_connector* %24, i32* @ge_b850v3_lvds_connector_helper_funcs)
  %26 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %27 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %30 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %31 = call i32 @drm_connector_init(i32 %28, %struct.drm_connector* %29, i32* @ge_b850v3_lvds_connector_funcs, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %56

37:                                               ; preds = %20
  %38 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %39 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %40 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %49 = load i32, i32* @STDP4028_IRQ_OUT_CONF_REG, align 4
  %50 = load i32, i32* @STDP4028_DPTX_DP_IRQ_EN, align 4
  %51 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %48, i32 %49, i32 %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = load i32, i32* @STDP4028_DPTX_IRQ_EN_REG, align 4
  %54 = load i32, i32* @STDP4028_DPTX_IRQ_CONFIG, align 4
  %55 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %52, i32 %53, i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %45, %34, %16
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(i32, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
