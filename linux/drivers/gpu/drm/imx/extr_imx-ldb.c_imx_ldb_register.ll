; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.imx_ldb_channel = type { i32, i32, i64, i32, i64, %struct.drm_encoder, i32, %struct.imx_ldb* }
%struct.drm_encoder = type { i32 }
%struct.imx_ldb = type { i32 }

@LDB_SPLIT_MODE_EN = common dso_local global i32 0, align 4
@imx_ldb_encoder_helper_funcs = common dso_local global i32 0, align 4
@imx_ldb_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to initialize bridge with drm\0A\00", align 1
@imx_ldb_connector_helper_funcs = common dso_local global i32 0, align 4
@imx_ldb_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.imx_ldb_channel*)* @imx_ldb_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_ldb_register(%struct.drm_device* %0, %struct.imx_ldb_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.imx_ldb_channel*, align 8
  %6 = alloca %struct.imx_ldb*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.imx_ldb_channel* %1, %struct.imx_ldb_channel** %5, align 8
  %9 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %10 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %9, i32 0, i32 7
  %11 = load %struct.imx_ldb*, %struct.imx_ldb** %10, align 8
  store %struct.imx_ldb* %11, %struct.imx_ldb** %6, align 8
  %12 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %13 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %12, i32 0, i32 5
  store %struct.drm_encoder* %13, %struct.drm_encoder** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %16 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %17 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @imx_drm_encoder_parse_of(%struct.drm_device* %14, %struct.drm_encoder* %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %107

24:                                               ; preds = %2
  %25 = load %struct.imx_ldb*, %struct.imx_ldb** %6, align 8
  %26 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %27 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @imx_ldb_get_clk(%struct.imx_ldb* %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %107

34:                                               ; preds = %24
  %35 = load %struct.imx_ldb*, %struct.imx_ldb** %6, align 8
  %36 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LDB_SPLIT_MODE_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.imx_ldb*, %struct.imx_ldb** %6, align 8
  %43 = call i32 @imx_ldb_get_clk(%struct.imx_ldb* %42, i32 1)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %107

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %34
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %51 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %50, i32* @imx_ldb_encoder_helper_funcs)
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %54 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  %55 = call i32 @drm_encoder_init(%struct.drm_device* %52, %struct.drm_encoder* %53, i32* @imx_ldb_encoder_funcs, i32 %54, i32* null)
  %56 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %57 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %62 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %61, i32 0, i32 5
  %63 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %64 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @drm_bridge_attach(%struct.drm_encoder* %62, i64 %65, i32* null)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %107

72:                                               ; preds = %60
  br label %89

73:                                               ; preds = %49
  %74 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %75 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %74, i32 0, i32 1
  %76 = call i32 @drm_connector_helper_add(i32* %75, i32* @imx_ldb_connector_helper_funcs)
  %77 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %78 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %79 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %78, i32 0, i32 1
  %80 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %81 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %82 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @drm_connector_init_with_ddc(%struct.drm_device* %77, i32* %79, i32* @imx_ldb_connector_funcs, i32 %80, i32 %83)
  %85 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %86 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %85, i32 0, i32 1
  %87 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %88 = call i32 @drm_connector_attach_encoder(i32* %86, %struct.drm_encoder* %87)
  br label %89

89:                                               ; preds = %73, %72
  %90 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %91 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %96 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %5, align 8
  %99 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %98, i32 0, i32 1
  %100 = call i32 @drm_panel_attach(i64 %97, i32* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %89
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %103, %69, %46, %32, %22
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @imx_drm_encoder_parse_of(%struct.drm_device*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @imx_ldb_get_clk(%struct.imx_ldb*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i64, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_connector_init_with_ddc(%struct.drm_device*, i32*, i32*, i32, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(i32*, %struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_attach(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
