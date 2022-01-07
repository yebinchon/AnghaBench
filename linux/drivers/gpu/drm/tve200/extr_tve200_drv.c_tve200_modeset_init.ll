; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_drv.c_tve200_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_drv.c_tve200_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__*, %struct.drm_mode_config, %struct.tve200_drm_dev_private* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_mode_config = type { i32, i32, i32, i32, i32* }
%struct.tve200_drm_dev_private = type { %struct.drm_bridge*, i32, %struct.drm_panel*, i32 }
%struct.drm_bridge = type { i32 }
%struct.drm_panel = type { i32, i32 }

@mode_config_funcs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_Unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"the bridge is not a panel\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to init display\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to attach bridge\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"attached to panel %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to init vblank\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @tve200_modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tve200_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_mode_config*, align 8
  %5 = alloca %struct.tve200_drm_dev_private*, align 8
  %6 = alloca %struct.drm_panel*, align 8
  %7 = alloca %struct.drm_bridge*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 2
  %11 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %10, align 8
  store %struct.tve200_drm_dev_private* %11, %struct.tve200_drm_dev_private** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call i32 @drm_mode_config_init(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  store %struct.drm_mode_config* %15, %struct.drm_mode_config** %4, align 8
  %16 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %17 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %16, i32 0, i32 4
  store i32* @mode_config_funcs, i32** %17, align 8
  %18 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %19 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %18, i32 0, i32 0
  store i32 352, i32* %19, align 8
  %20 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %21 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %20, i32 0, i32 1
  store i32 720, i32* %21, align 4
  %22 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %23 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %22, i32 0, i32 2
  store i32 240, i32* %23, align 8
  %24 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %25 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %24, i32 0, i32 3
  store i32 576, i32* %25, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_of_find_panel_or_bridge(i32 %30, i32 0, i32 0, %struct.drm_panel** %6, %struct.drm_bridge** %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %2, align 4
  br label %127

41:                                               ; preds = %34, %1
  %42 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %43 = icmp ne %struct.drm_panel* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %46 = load i32, i32* @DRM_MODE_CONNECTOR_Unknown, align 4
  %47 = call %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel* %45, i32 %46)
  store %struct.drm_bridge* %47, %struct.drm_bridge** %7, align 8
  %48 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %49 = call i64 @IS_ERR(%struct.drm_bridge* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %53 = call i32 @PTR_ERR(%struct.drm_bridge* %52)
  store i32 %53, i32* %8, align 4
  br label %116

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @dev_err(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %116

60:                                               ; preds = %54
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = call i32 @tve200_display_init(%struct.drm_device* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = call i32 @dev_err(%struct.TYPE_3__* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %116

70:                                               ; preds = %60
  %71 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %5, align 8
  %72 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %71, i32 0, i32 3
  %73 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %74 = call i32 @drm_simple_display_pipe_attach_bridge(i32* %72, %struct.drm_bridge* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @dev_err(%struct.TYPE_3__* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %116

82:                                               ; preds = %70
  %83 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %84 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %5, align 8
  %85 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %84, i32 0, i32 2
  store %struct.drm_panel* %83, %struct.drm_panel** %85, align 8
  %86 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %87 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %5, align 8
  %90 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %92 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %5, align 8
  %93 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %92, i32 0, i32 0
  store %struct.drm_bridge* %91, %struct.drm_bridge** %93, align 8
  %94 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %98 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_name(i32 %99)
  %101 = call i32 @dev_info(%struct.TYPE_3__* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %103 = call i32 @drm_vblank_init(%struct.drm_device* %102, i32 1)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %82
  %107 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = call i32 @dev_err(%struct.TYPE_3__* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %116

111:                                              ; preds = %82
  %112 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %113 = call i32 @drm_mode_config_reset(%struct.drm_device* %112)
  %114 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %115 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %114)
  br label %125

116:                                              ; preds = %106, %77, %65, %55, %51
  %117 = load %struct.drm_panel*, %struct.drm_panel** %6, align 8
  %118 = icmp ne %struct.drm_panel* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.drm_bridge*, %struct.drm_bridge** %7, align 8
  %121 = call i32 @drm_panel_bridge_remove(%struct.drm_bridge* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %123)
  br label %125

125:                                              ; preds = %122, %111
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %39
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_bridge*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @tve200_display_init(%struct.drm_device*) #1

declare dso_local i32 @drm_simple_display_pipe_attach_bridge(i32*, %struct.drm_bridge*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_panel_bridge_remove(%struct.drm_bridge*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
