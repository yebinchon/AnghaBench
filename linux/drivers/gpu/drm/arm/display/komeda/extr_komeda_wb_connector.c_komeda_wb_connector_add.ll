; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_connector_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_connector_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.komeda_dev* }
%struct.komeda_dev = type { i32 }
%struct.komeda_crtc = type { %struct.komeda_wb_connector*, i32, %struct.TYPE_5__* }
%struct.komeda_wb_connector = type { %struct.TYPE_7__*, %struct.drm_writeback_connector }
%struct.TYPE_7__ = type { i32 }
%struct.drm_writeback_connector = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@komeda_wb_connector_funcs = common dso_local global i32 0, align 4
@komeda_wb_encoder_helper_funcs = common dso_local global i32 0, align 4
@komeda_wb_conn_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_kms_dev*, %struct.komeda_crtc*)* @komeda_wb_connector_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_wb_connector_add(%struct.komeda_kms_dev* %0, %struct.komeda_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_crtc*, align 8
  %6 = alloca %struct.komeda_dev*, align 8
  %7 = alloca %struct.komeda_wb_connector*, align 8
  %8 = alloca %struct.drm_writeback_connector*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_crtc* %1, %struct.komeda_crtc** %5, align 8
  %12 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %13 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.komeda_dev*, %struct.komeda_dev** %14, align 8
  store %struct.komeda_dev* %15, %struct.komeda_dev** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.komeda_wb_connector* @kzalloc(i32 16, i32 %24)
  store %struct.komeda_wb_connector* %25, %struct.komeda_wb_connector** %7, align 8
  %26 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %27 = icmp ne %struct.komeda_wb_connector* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %33 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %38 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %37, i32 0, i32 0
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %40 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %39, i32 0, i32 1
  store %struct.drm_writeback_connector* %40, %struct.drm_writeback_connector** %8, align 8
  %41 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %42 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %41, i32 0, i32 1
  %43 = call i32 @drm_crtc_index(i32* %42)
  %44 = call i32 @BIT(i32 %43)
  %45 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %8, align 8
  %46 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.komeda_dev*, %struct.komeda_dev** %6, align 8
  %49 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %48, i32 0, i32 0
  %50 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %51 = getelementptr inbounds %struct.komeda_wb_connector, %struct.komeda_wb_connector* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @komeda_get_layer_fourcc_list(i32* %49, i32 %54, i32* %10)
  store i32* %55, i32** %9, align 8
  %56 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %57 = getelementptr inbounds %struct.komeda_kms_dev, %struct.komeda_kms_dev* %56, i32 0, i32 0
  %58 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @drm_writeback_connector_init(%struct.TYPE_8__* %57, %struct.drm_writeback_connector* %58, i32* @komeda_wb_connector_funcs, i32* @komeda_wb_encoder_helper_funcs, i32* %59, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @komeda_put_fourcc_list(i32* %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %31
  %67 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %68 = call i32 @kfree(%struct.komeda_wb_connector* %67)
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %77

70:                                               ; preds = %31
  %71 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %8, align 8
  %72 = getelementptr inbounds %struct.drm_writeback_connector, %struct.drm_writeback_connector* %71, i32 0, i32 0
  %73 = call i32 @drm_connector_helper_add(i32* %72, i32* @komeda_wb_conn_helper_funcs)
  %74 = load %struct.komeda_wb_connector*, %struct.komeda_wb_connector** %7, align 8
  %75 = load %struct.komeda_crtc*, %struct.komeda_crtc** %5, align 8
  %76 = getelementptr inbounds %struct.komeda_crtc, %struct.komeda_crtc* %75, i32 0, i32 0
  store %struct.komeda_wb_connector* %74, %struct.komeda_wb_connector** %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %66, %28, %22
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.komeda_wb_connector* @kzalloc(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_crtc_index(i32*) #1

declare dso_local i32* @komeda_get_layer_fourcc_list(i32*, i32, i32*) #1

declare dso_local i32 @drm_writeback_connector_init(%struct.TYPE_8__*, %struct.drm_writeback_connector*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @komeda_put_fourcc_list(i32*) #1

declare dso_local i32 @kfree(%struct.komeda_wb_connector*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
