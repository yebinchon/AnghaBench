; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device_info = type { i8*, i32*, i32 }
%struct.mipi_dsi_device = type { i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.truly_nt35597 = type { i32, %struct.mipi_dsi_device**, %struct.device*, i32 }
%struct.device_node = type { i32 }
%struct.mipi_dsi_host = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"trulynt35597\00", align 1
@__const.truly_nt35597_probe.info = private unnamed_addr constant %struct.mipi_dsi_device_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32* null, i32 0 }, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"missing device configuration\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to get remote node for dsi1_device\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to find dsi host\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to create dsi device\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to add panel\0A\00", align 1
@MIPI_DSI_FMT_RGB888 = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_LPM = common dso_local global i32 0, align 4
@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"dsi attach failed i = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @truly_nt35597_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_probe(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.truly_nt35597*, align 8
  %6 = alloca %struct.mipi_dsi_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.mipi_dsi_host*, align 8
  %9 = alloca %struct.mipi_dsi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mipi_dsi_device_info, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %3, align 8
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %13, i32 0, i32 3
  store %struct.device* %14, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %15 = bitcast %struct.mipi_dsi_device_info* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.mipi_dsi_device_info* @__const.truly_nt35597_probe.info to i8*), i64 24, i1 false)
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.truly_nt35597* @devm_kzalloc(%struct.device* %16, i32 32, i32 %17)
  store %struct.truly_nt35597* %18, %struct.truly_nt35597** %5, align 8
  %19 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %20 = icmp ne %struct.truly_nt35597* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %147

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @of_device_get_match_data(%struct.device* %25)
  %27 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %28 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %30 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %147

38:                                               ; preds = %24
  %39 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.device_node* @of_graph_get_remote_node(i32 %42, i32 1, i32 -1)
  store %struct.device_node* %43, %struct.device_node** %7, align 8
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = icmp ne %struct.device_node* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %38
  %52 = load %struct.device_node*, %struct.device_node** %7, align 8
  %53 = call %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(%struct.device_node* %52)
  store %struct.mipi_dsi_host* %53, %struct.mipi_dsi_host** %8, align 8
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %8, align 8
  %57 = icmp ne %struct.mipi_dsi_host* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EPROBE_DEFER, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %147

63:                                               ; preds = %51
  %64 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %8, align 8
  %65 = call %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host* %64, %struct.mipi_dsi_device_info* %12)
  store %struct.mipi_dsi_device* %65, %struct.mipi_dsi_device** %6, align 8
  %66 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %67 = call i64 @IS_ERR(%struct.mipi_dsi_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %73 = call i32 @PTR_ERR(%struct.mipi_dsi_device* %72)
  store i32 %73, i32* %2, align 4
  br label %147

74:                                               ; preds = %63
  %75 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %76 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %77 = call i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device* %75, %struct.truly_nt35597* %76)
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %80 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %79, i32 0, i32 2
  store %struct.device* %78, %struct.device** %80, align 8
  %81 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %82 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %83 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %82, i32 0, i32 1
  %84 = load %struct.mipi_dsi_device**, %struct.mipi_dsi_device*** %83, align 8
  %85 = getelementptr inbounds %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %84, i64 0
  store %struct.mipi_dsi_device* %81, %struct.mipi_dsi_device** %85, align 8
  %86 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %87 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %88 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %87, i32 0, i32 1
  %89 = load %struct.mipi_dsi_device**, %struct.mipi_dsi_device*** %88, align 8
  %90 = getelementptr inbounds %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %89, i64 1
  store %struct.mipi_dsi_device* %86, %struct.mipi_dsi_device** %90, align 8
  %91 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %92 = call i32 @truly_nt35597_panel_add(%struct.truly_nt35597* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %74
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %143

98:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %135, %98
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %102 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %101, i32 0, i32 1
  %103 = load %struct.mipi_dsi_device**, %struct.mipi_dsi_device*** %102, align 8
  %104 = call i32 @ARRAY_SIZE(%struct.mipi_dsi_device** %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %99
  %107 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %108 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %107, i32 0, i32 1
  %109 = load %struct.mipi_dsi_device**, %struct.mipi_dsi_device*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %109, i64 %111
  %113 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %112, align 8
  store %struct.mipi_dsi_device* %113, %struct.mipi_dsi_device** %9, align 8
  %114 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %115 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %114, i32 0, i32 0
  store i32 4, i32* %115, align 4
  %116 = load i32, i32* @MIPI_DSI_FMT_RGB888, align 4
  %117 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %118 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %120 = load i32, i32* @MIPI_DSI_MODE_LPM, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %125 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %9, align 8
  %127 = call i32 @mipi_dsi_attach(%struct.mipi_dsi_device* %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %106
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %139

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %99

138:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %147

139:                                              ; preds = %130
  %140 = load %struct.truly_nt35597*, %struct.truly_nt35597** %5, align 8
  %141 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %140, i32 0, i32 0
  %142 = call i32 @drm_panel_remove(i32* %141)
  br label %143

143:                                              ; preds = %139, %95
  %144 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %6, align 8
  %145 = call i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device* %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %138, %69, %58, %46, %33, %21
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.truly_nt35597* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @of_device_get_match_data(%struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #2

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #2

declare dso_local %struct.mipi_dsi_host* @of_find_mipi_dsi_host_by_node(%struct.device_node*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local %struct.mipi_dsi_device* @mipi_dsi_device_register_full(%struct.mipi_dsi_host*, %struct.mipi_dsi_device_info*) #2

declare dso_local i64 @IS_ERR(%struct.mipi_dsi_device*) #2

declare dso_local i32 @PTR_ERR(%struct.mipi_dsi_device*) #2

declare dso_local i32 @mipi_dsi_set_drvdata(%struct.mipi_dsi_device*, %struct.truly_nt35597*) #2

declare dso_local i32 @truly_nt35597_panel_add(%struct.truly_nt35597*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.mipi_dsi_device**) #2

declare dso_local i32 @mipi_dsi_attach(%struct.mipi_dsi_device*) #2

declare dso_local i32 @drm_panel_remove(i32*) #2

declare dso_local i32 @mipi_dsi_device_unregister(%struct.mipi_dsi_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
