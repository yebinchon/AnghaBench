; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_modeset_init_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_kms.c_mdp4_modeset_init_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp4_kms = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__*, %struct.msm_drm_private* }
%struct.TYPE_2__ = type { i32 }
%struct.msm_drm_private = type { i32*, i32, %struct.drm_encoder**, i32, i32, %struct.drm_encoder** }
%struct.drm_encoder = type { i32 }
%struct.drm_connector = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to construct LCDC encoder\0A\00", align 1
@DMA_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to initialize LVDS connector\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to construct DTV encoder\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to initialize HDMI: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to construct DSI encoder: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to initialize DSI: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp4_kms*, i32)* @mdp4_modeset_init_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp4_modeset_init_intf(%struct.mdp4_kms* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mdp4_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.msm_drm_private*, align 8
  %8 = alloca %struct.drm_encoder*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mdp4_kms* %0, %struct.mdp4_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %14 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  store %struct.msm_drm_private* %18, %struct.msm_drm_private** %7, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %196 [
    i32 129, label %20
    i32 128, label %88
    i32 130, label %136
  ]

20:                                               ; preds = %2
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.device_node* @of_graph_get_remote_node(i32 %25, i32 0, i32 0)
  store %struct.device_node* %26, %struct.device_node** %10, align 8
  %27 = load %struct.device_node*, %struct.device_node** %10, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %204

30:                                               ; preds = %20
  %31 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %32 = load %struct.device_node*, %struct.device_node** %10, align 8
  %33 = call %struct.drm_encoder* @mdp4_lcdc_encoder_init(%struct.drm_device* %31, %struct.device_node* %32)
  store %struct.drm_encoder* %33, %struct.drm_encoder** %8, align 8
  %34 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %35 = call i32 @IS_ERR(%struct.drm_encoder* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.drm_encoder* %42)
  store i32 %43, i32* %3, align 4
  br label %204

44:                                               ; preds = %30
  %45 = load i32, i32* @DMA_P, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %48 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = load %struct.device_node*, %struct.device_node** %10, align 8
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %52 = call %struct.drm_encoder* @mdp4_lvds_connector_init(%struct.drm_device* %49, %struct.device_node* %50, %struct.drm_encoder* %51)
  %53 = bitcast %struct.drm_encoder* %52 to %struct.drm_connector*
  store %struct.drm_connector* %53, %struct.drm_connector** %9, align 8
  %54 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %55 = bitcast %struct.drm_connector* %54 to %struct.drm_encoder*
  %56 = call i32 @IS_ERR(%struct.drm_encoder* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %64 = bitcast %struct.drm_connector* %63 to %struct.drm_encoder*
  %65 = call i32 @PTR_ERR(%struct.drm_encoder* %64)
  store i32 %65, i32* %3, align 4
  br label %204

66:                                               ; preds = %44
  %67 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %68 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %69 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %68, i32 0, i32 2
  %70 = load %struct.drm_encoder**, %struct.drm_encoder*** %69, align 8
  %71 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %72 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %70, i64 %75
  store %struct.drm_encoder* %67, %struct.drm_encoder** %76, align 8
  %77 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %78 = bitcast %struct.drm_connector* %77 to %struct.drm_encoder*
  %79 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %80 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %79, i32 0, i32 5
  %81 = load %struct.drm_encoder**, %struct.drm_encoder*** %80, align 8
  %82 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %83 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %81, i64 %86
  store %struct.drm_encoder* %78, %struct.drm_encoder** %87, align 8
  br label %203

88:                                               ; preds = %2
  %89 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %90 = call %struct.drm_encoder* @mdp4_dtv_encoder_init(%struct.drm_device* %89)
  store %struct.drm_encoder* %90, %struct.drm_encoder** %8, align 8
  %91 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %92 = call i32 @IS_ERR(%struct.drm_encoder* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %96 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %100 = call i32 @PTR_ERR(%struct.drm_encoder* %99)
  store i32 %100, i32* %3, align 4
  br label %204

101:                                              ; preds = %88
  %102 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %103 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %102, i32 0, i32 0
  store i32 2, i32* %103, align 4
  %104 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %105 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %101
  %109 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %110 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %113 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %114 = call i32 @msm_hdmi_modeset_init(i32 %111, %struct.drm_device* %112, %struct.drm_encoder* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %108
  %118 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %119 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %3, align 4
  br label %204

124:                                              ; preds = %108
  br label %125

125:                                              ; preds = %124, %101
  %126 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %127 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %128 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %127, i32 0, i32 2
  %129 = load %struct.drm_encoder**, %struct.drm_encoder*** %128, align 8
  %130 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %131 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %129, i64 %134
  store %struct.drm_encoder* %126, %struct.drm_encoder** %135, align 8
  br label %203

136:                                              ; preds = %2
  store i32 0, i32* %11, align 4
  %137 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %138 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %136
  br label %203

146:                                              ; preds = %136
  %147 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %148 = call %struct.drm_encoder* @mdp4_dsi_encoder_init(%struct.drm_device* %147)
  store %struct.drm_encoder* %148, %struct.drm_encoder** %8, align 8
  %149 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %150 = call i32 @IS_ERR(%struct.drm_encoder* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %154 = call i32 @PTR_ERR(%struct.drm_encoder* %153)
  store i32 %154, i32* %12, align 4
  %155 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %156 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %3, align 4
  br label %204

161:                                              ; preds = %146
  %162 = load i32, i32* @DMA_P, align 4
  %163 = shl i32 1, %162
  %164 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %165 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %167 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %168 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %167, i32 0, i32 2
  %169 = load %struct.drm_encoder**, %struct.drm_encoder*** %168, align 8
  %170 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %171 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds %struct.drm_encoder*, %struct.drm_encoder** %169, i64 %174
  store %struct.drm_encoder* %166, %struct.drm_encoder** %175, align 8
  %176 = load %struct.msm_drm_private*, %struct.msm_drm_private** %7, align 8
  %177 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %184 = load %struct.drm_encoder*, %struct.drm_encoder** %8, align 8
  %185 = call i32 @msm_dsi_modeset_init(i32 %182, %struct.drm_device* %183, %struct.drm_encoder* %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %161
  %189 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %190 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %191, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %3, align 4
  br label %204

195:                                              ; preds = %161
  br label %203

196:                                              ; preds = %2
  %197 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %198 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = call i32 (%struct.TYPE_2__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_2__* %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %204

203:                                              ; preds = %195, %145, %125, %66
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %196, %188, %152, %117, %94, %58, %37, %29
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.device_node* @of_graph_get_remote_node(i32, i32, i32) #1

declare dso_local %struct.drm_encoder* @mdp4_lcdc_encoder_init(%struct.drm_device*, %struct.device_node*) #1

declare dso_local i32 @IS_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @mdp4_lvds_connector_init(%struct.drm_device*, %struct.device_node*, %struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @mdp4_dtv_encoder_init(%struct.drm_device*) #1

declare dso_local i32 @msm_hdmi_modeset_init(i32, %struct.drm_device*, %struct.drm_encoder*) #1

declare dso_local %struct.drm_encoder* @mdp4_dsi_encoder_init(%struct.drm_device*) #1

declare dso_local i32 @msm_dsi_modeset_init(i32, %struct.drm_device*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
