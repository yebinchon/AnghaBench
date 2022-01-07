; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_rgb.c_sun4i_rgb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_rgb.c_sun4i_rgb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.sun4i_tcon = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.sun4i_rgb = type { %struct.drm_encoder, i64, i32, i64, %struct.sun4i_tcon* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"No panel or bridge found... RGB output disabled\0A\00", align 1
@sun4i_rgb_enc_helper_funcs = common dso_local global i32 0, align 4
@sun4i_rgb_enc_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Couldn't initialise the rgb encoder\0A\00", align 1
@sun4i_rgb_con_helper_funcs = common dso_local global i32 0, align 4
@sun4i_rgb_con_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't initialise the rgb connector\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Couldn't attach our panel\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't attach our bridge\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_rgb_init(%struct.drm_device* %0, %struct.sun4i_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sun4i_tcon*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.sun4i_rgb*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.sun4i_tcon* %1, %struct.sun4i_tcon** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sun4i_rgb* @devm_kzalloc(i32 %11, i32 40, i32 %12)
  store %struct.sun4i_rgb* %13, %struct.sun4i_rgb** %7, align 8
  %14 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %15 = icmp ne %struct.sun4i_rgb* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %2
  %20 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %21 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %22 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %21, i32 0, i32 4
  store %struct.sun4i_tcon* %20, %struct.sun4i_tcon** %22, align 8
  %23 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %24 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %23, i32 0, i32 0
  store %struct.drm_encoder* %24, %struct.drm_encoder** %6, align 8
  %25 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %26 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %31 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %30, i32 0, i32 3
  %32 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %33 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %32, i32 0, i32 1
  %34 = call i32 @drm_of_find_panel_or_bridge(i32 %29, i32 1, i32 0, i64* %31, i64* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %133

42:                                               ; preds = %19
  %43 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %44 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %43, i32 0, i32 0
  %45 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %44, i32* @sun4i_rgb_enc_helper_funcs)
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %48 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %47, i32 0, i32 0
  %49 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  %50 = call i32 @drm_encoder_init(%struct.drm_device* %46, %struct.drm_encoder* %48, i32* @sun4i_rgb_enc_funcs, i32 %49, i32* null)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %42
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %131

58:                                               ; preds = %42
  %59 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %60 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @drm_crtc_mask(i32* %62)
  %64 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %65 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %68 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %107

71:                                               ; preds = %58
  %72 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %73 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %72, i32 0, i32 2
  %74 = call i32 @drm_connector_helper_add(i32* %73, i32* @sun4i_rgb_con_helper_funcs)
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %77 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %76, i32 0, i32 2
  %78 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  %79 = call i32 @drm_connector_init(%struct.drm_device* %75, i32* %77, i32* @sun4i_rgb_con_funcs, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %127

87:                                               ; preds = %71
  %88 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %89 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %88, i32 0, i32 2
  %90 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %91 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %90, i32 0, i32 0
  %92 = call i32 @drm_connector_attach_encoder(i32* %89, %struct.drm_encoder* %91)
  %93 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %94 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %97 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %96, i32 0, i32 2
  %98 = call i32 @drm_panel_attach(i64 %95, i32* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %87
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %127

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106, %58
  %108 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %109 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %114 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %115 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @drm_bridge_attach(%struct.drm_encoder* %113, i64 %116, i32* null)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %112
  %121 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %122 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %127

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %107
  store i32 0, i32* %3, align 4
  br label %133

127:                                              ; preds = %120, %101, %82
  %128 = load %struct.sun4i_rgb*, %struct.sun4i_rgb** %7, align 8
  %129 = getelementptr inbounds %struct.sun4i_rgb, %struct.sun4i_rgb* %128, i32 0, i32 0
  %130 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %129)
  br label %131

131:                                              ; preds = %127, %53
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %126, %37, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.sun4i_rgb* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_crtc_mask(i32*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, i32*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_attach(i64, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i64, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
