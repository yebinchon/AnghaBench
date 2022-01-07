; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_lvds.c_sun4i_lvds_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_lvds.c_sun4i_lvds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.sun4i_tcon = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_bridge = type { i32 }
%struct.sun4i_lvds = type { %struct.drm_encoder, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No panel or bridge found... LVDS output disabled\0A\00", align 1
@sun4i_lvds_enc_helper_funcs = common dso_local global i32 0, align 4
@sun4i_lvds_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't initialise the lvds encoder\0A\00", align 1
@sun4i_lvds_con_helper_funcs = common dso_local global i32 0, align 4
@sun4i_lvds_con_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't initialise the lvds connector\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't attach our panel\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't attach our bridge\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_lvds_init(%struct.drm_device* %0, %struct.sun4i_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sun4i_tcon*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_bridge*, align 8
  %8 = alloca %struct.sun4i_lvds*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.sun4i_tcon* %1, %struct.sun4i_tcon** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sun4i_lvds* @devm_kzalloc(i32 %12, i32 16, i32 %13)
  store %struct.sun4i_lvds* %14, %struct.sun4i_lvds** %8, align 8
  %15 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %16 = icmp ne %struct.sun4i_lvds* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %125

20:                                               ; preds = %2
  %21 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %22 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %21, i32 0, i32 0
  store %struct.drm_encoder* %22, %struct.drm_encoder** %6, align 8
  %23 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %24 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %29 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %28, i32 0, i32 2
  %30 = call i32 @drm_of_find_panel_or_bridge(i32 %27, i32 1, i32 0, i64* %29, %struct.drm_bridge** %7)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_info(i32 %36, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %125

38:                                               ; preds = %20
  %39 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %40 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %39, i32 0, i32 0
  %41 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %40, i32* @sun4i_lvds_enc_helper_funcs)
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %44 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %43, i32 0, i32 0
  %45 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %46 = call i32 @drm_encoder_init(%struct.drm_device* %42, %struct.drm_encoder* %44, i32* @sun4i_lvds_enc_funcs, i32 %45, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %123

54:                                               ; preds = %38
  %55 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %56 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @drm_crtc_mask(i32* %58)
  %60 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %61 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %64 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %54
  %68 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %69 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %68, i32 0, i32 1
  %70 = call i32 @drm_connector_helper_add(i32* %69, i32* @sun4i_lvds_con_helper_funcs)
  %71 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %72 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %73 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %72, i32 0, i32 1
  %74 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %75 = call i32 @drm_connector_init(%struct.drm_device* %71, i32* %73, i32* @sun4i_lvds_con_funcs, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %119

83:                                               ; preds = %67
  %84 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %85 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %84, i32 0, i32 1
  %86 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %87 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %86, i32 0, i32 0
  %88 = call i32 @drm_connector_attach_encoder(i32* %85, %struct.drm_encoder* %87)
  %89 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %90 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %93 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %92, i32 0, i32 1
  %94 = call i32 @drm_panel_attach(i64 %91, i32* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %119

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102, %54
  %104 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %105 = icmp ne %struct.drm_bridge* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %108 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %109 = call i32 @drm_bridge_attach(%struct.drm_encoder* %107, %struct.drm_bridge* %108, i32* null)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %114 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_err(i32 %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %119

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %103
  store i32 0, i32* %3, align 4
  br label %125

119:                                              ; preds = %112, %97, %78
  %120 = load %struct.sun4i_lvds*, %struct.sun4i_lvds** %8, align 8
  %121 = getelementptr inbounds %struct.sun4i_lvds, %struct.sun4i_lvds* %120, i32 0, i32 0
  %122 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %121)
  br label %123

123:                                              ; preds = %119, %49
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %118, %33, %17
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.sun4i_lvds* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i64*, %struct.drm_bridge**) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_crtc_mask(i32*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_attach(i64, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_bridge*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
