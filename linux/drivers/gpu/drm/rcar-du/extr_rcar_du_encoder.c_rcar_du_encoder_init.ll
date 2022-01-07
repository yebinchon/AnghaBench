; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_encoder.c_rcar_du_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_encoder.c_rcar_du_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_device = type { i32, i32, %struct.TYPE_3__*, %struct.rcar_du_encoder** }
%struct.TYPE_3__ = type { i32 }
%struct.rcar_du_encoder = type { i32 }
%struct.device_node = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.drm_encoder*)* }
%struct.drm_bridge = type opaque
%struct.drm_panel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"initializing encoder %pOF for output %u\0A\00", align 1
@RCAR_DU_OUTPUT_DPAD0 = common dso_local global i32 0, align 4
@RCAR_DU_OUTPUT_DPAD1 = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DPI = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@RCAR_DU_OUTPUT_LVDS1 = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_encoder_init(%struct.rcar_du_device* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.rcar_du_encoder*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_bridge*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_panel*, align 8
  store %struct.rcar_du_device* %0, %struct.rcar_du_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %13 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %14 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rcar_du_encoder* @devm_kzalloc(i32 %15, i32 4, i32 %16)
  store %struct.rcar_du_encoder* %17, %struct.rcar_du_encoder** %8, align 8
  %18 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %19 = icmp eq %struct.rcar_du_encoder* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %157

23:                                               ; preds = %3
  %24 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %25 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %26 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %25, i32 0, i32 3
  %27 = load %struct.rcar_du_encoder**, %struct.rcar_du_encoder*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %27, i64 %29
  store %struct.rcar_du_encoder* %24, %struct.rcar_du_encoder** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %33 = getelementptr inbounds %struct.rcar_du_encoder, %struct.rcar_du_encoder* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %35 = call %struct.drm_encoder* @rcar_encoder_to_drm_encoder(%struct.rcar_du_encoder* %34)
  store %struct.drm_encoder* %35, %struct.drm_encoder** %9, align 8
  %36 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %37 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.device_node* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @RCAR_DU_OUTPUT_DPAD0, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %23
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RCAR_DU_OUTPUT_DPAD1, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45, %23
  %50 = load %struct.device_node*, %struct.device_node** %7, align 8
  %51 = call i32 @rcar_du_encoder_count_ports(%struct.device_node* %50)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call %struct.drm_panel* @of_drm_find_panel(%struct.device_node* %54)
  store %struct.drm_panel* %55, %struct.drm_panel** %12, align 8
  %56 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %57 = call i64 @IS_ERR(%struct.drm_panel* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %61 = call i32 @PTR_ERR(%struct.drm_panel* %60)
  store i32 %61, i32* %11, align 4
  br label %133

62:                                               ; preds = %53
  %63 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %64 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drm_panel*, %struct.drm_panel** %12, align 8
  %67 = load i32, i32* @DRM_MODE_CONNECTOR_DPI, align 4
  %68 = call %struct.drm_panel* @devm_drm_panel_bridge_add(i32 %65, %struct.drm_panel* %66, i32 %67)
  %69 = bitcast %struct.drm_panel* %68 to %struct.drm_bridge*
  store %struct.drm_bridge* %69, %struct.drm_bridge** %10, align 8
  %70 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %71 = bitcast %struct.drm_bridge* %70 to %struct.drm_panel*
  %72 = call i64 @IS_ERR(%struct.drm_panel* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %76 = bitcast %struct.drm_bridge* %75 to %struct.drm_panel*
  %77 = call i32 @PTR_ERR(%struct.drm_panel* %76)
  store i32 %77, i32* %11, align 4
  br label %133

78:                                               ; preds = %62
  br label %89

79:                                               ; preds = %49, %45
  %80 = load %struct.device_node*, %struct.device_node** %7, align 8
  %81 = call %struct.drm_panel* @of_drm_find_bridge(%struct.device_node* %80)
  %82 = bitcast %struct.drm_panel* %81 to %struct.drm_bridge*
  store %struct.drm_bridge* %82, %struct.drm_bridge** %10, align 8
  %83 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %84 = icmp ne %struct.drm_bridge* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @EPROBE_DEFER, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %133

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %78
  %90 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %91 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %94, 3
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @RCAR_DU_OUTPUT_LVDS1, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %102 = bitcast %struct.drm_bridge* %101 to %struct.drm_panel*
  %103 = call i64 @rcar_lvds_dual_link(%struct.drm_panel* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @ENOLINK, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %133

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %96, %89
  %110 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %111 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %114 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  %115 = call i32 @drm_encoder_init(i32 %112, %struct.drm_encoder* %113, i32* @encoder_funcs, i32 %114, i32* null)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %133

119:                                              ; preds = %109
  %120 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %121 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %120, i32* @encoder_helper_funcs)
  %122 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %123 = load %struct.drm_bridge*, %struct.drm_bridge** %10, align 8
  %124 = bitcast %struct.drm_bridge* %123 to %struct.drm_panel*
  %125 = call i32 @drm_bridge_attach(%struct.drm_encoder* %122, %struct.drm_panel* %124, i32* null)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %130 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %157

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %118, %105, %85, %74, %59
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %133
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %138 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %143 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32 (%struct.drm_encoder*)*, i32 (%struct.drm_encoder*)** %145, align 8
  %147 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %148 = call i32 %146(%struct.drm_encoder* %147)
  br label %149

149:                                              ; preds = %141, %136
  %150 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  %151 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.rcar_du_encoder*, %struct.rcar_du_encoder** %8, align 8
  %154 = call i32 @devm_kfree(i32 %152, %struct.rcar_du_encoder* %153)
  br label %155

155:                                              ; preds = %149, %133
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %128, %20
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.rcar_du_encoder* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.drm_encoder* @rcar_encoder_to_drm_encoder(%struct.rcar_du_encoder*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.device_node*, i32) #1

declare dso_local i32 @rcar_du_encoder_count_ports(%struct.device_node*) #1

declare dso_local %struct.drm_panel* @of_drm_find_panel(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.drm_panel*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_panel*) #1

declare dso_local %struct.drm_panel* @devm_drm_panel_bridge_add(i32, %struct.drm_panel*, i32) #1

declare dso_local %struct.drm_panel* @of_drm_find_bridge(%struct.device_node*) #1

declare dso_local i64 @rcar_lvds_dual_link(%struct.drm_panel*) #1

declare dso_local i32 @drm_encoder_init(i32, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, %struct.drm_panel*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @devm_kfree(i32, %struct.rcar_du_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
