; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.device*, %struct.mtk_drm_private* }
%struct.device = type { i32 }
%struct.mtk_drm_private = type { i32, %struct.mtk_ddp_comp**, %struct.device_node**, i32, i32 }
%struct.mtk_ddp_comp = type { i32 }
%struct.device_node = type { i32 }
%struct.mtk_drm_crtc = type { i32, i32, i32, i32*, %struct.mtk_ddp_comp**, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"Not creating crtc %d because component %d is disabled or missing\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get mutex: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Component %pOF not initialized\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@MTK_LUT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_drm_crtc_create(%struct.drm_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_drm_private*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.mtk_drm_crtc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.device_node*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mtk_ddp_comp*, align 8
  %20 = alloca %struct.device_node*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %22, align 8
  store %struct.mtk_drm_private* %23, %struct.mtk_drm_private** %8, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %28 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %261

33:                                               ; preds = %3
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %16, align 4
  %44 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %45 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %44, i32 0, i32 2
  %46 = load %struct.device_node**, %struct.device_node*** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.device_node*, %struct.device_node** %46, i64 %48
  %50 = load %struct.device_node*, %struct.device_node** %49, align 8
  store %struct.device_node* %50, %struct.device_node** %17, align 8
  %51 = load %struct.device_node*, %struct.device_node** %17, align 8
  %52 = icmp ne %struct.device_node* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %38
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @dev_info(%struct.device* %54, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  store i32 0, i32* %4, align 4
  br label %261

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.mtk_drm_crtc* @devm_kzalloc(%struct.device* %63, i32 40, i32 %64)
  store %struct.mtk_drm_crtc* %65, %struct.mtk_drm_crtc** %10, align 8
  %66 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %67 = icmp ne %struct.mtk_drm_crtc* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %261

71:                                               ; preds = %62
  %72 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %76 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %79 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %82 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.mtk_ddp_comp** @devm_kmalloc_array(%struct.device* %80, i32 %83, i32 8, i32 %84)
  %86 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %87 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %86, i32 0, i32 4
  store %struct.mtk_ddp_comp** %85, %struct.mtk_ddp_comp*** %87, align 8
  %88 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %89 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %88, i32 0, i32 4
  %90 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %89, align 8
  %91 = icmp ne %struct.mtk_ddp_comp** %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %71
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %261

95:                                               ; preds = %71
  %96 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %97 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @mtk_disp_mutex_get(i32 %98, i32 %99)
  %101 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %102 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %104 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @IS_ERR(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %95
  %109 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %110 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %4, align 4
  br label %261

117:                                              ; preds = %95
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %162, %117
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %121 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %124, label %165

124:                                              ; preds = %118
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %18, align 4
  %130 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %131 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %130, i32 0, i32 2
  %132 = load %struct.device_node**, %struct.device_node*** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.device_node*, %struct.device_node** %132, i64 %134
  %136 = load %struct.device_node*, %struct.device_node** %135, align 8
  store %struct.device_node* %136, %struct.device_node** %20, align 8
  %137 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %138 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %137, i32 0, i32 1
  %139 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %139, i64 %141
  %143 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %142, align 8
  store %struct.mtk_ddp_comp* %143, %struct.mtk_ddp_comp** %19, align 8
  %144 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %19, align 8
  %145 = icmp ne %struct.mtk_ddp_comp* %144, null
  br i1 %145, label %154, label %146

146:                                              ; preds = %124
  %147 = load %struct.device*, %struct.device** %9, align 8
  %148 = load %struct.device_node*, %struct.device_node** %20, align 8
  %149 = ptrtoint %struct.device_node* %148 to i32
  %150 = call i32 @dev_err(%struct.device* %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  store i32 %153, i32* %4, align 4
  br label %261

154:                                              ; preds = %124
  %155 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %19, align 8
  %156 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %157 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %156, i32 0, i32 4
  %158 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %158, i64 %160
  store %struct.mtk_ddp_comp* %155, %struct.mtk_ddp_comp** %161, align 8
  br label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %118

165:                                              ; preds = %118
  %166 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %167 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %166, i32 0, i32 4
  %168 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %167, align 8
  %169 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %168, i64 0
  %170 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %169, align 8
  %171 = call i32 @mtk_ddp_comp_layer_nr(%struct.mtk_ddp_comp* %170)
  %172 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %173 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.device*, %struct.device** %9, align 8
  %175 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %176 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i32* @devm_kcalloc(%struct.device* %174, i32 %177, i32 4, i32 %178)
  %180 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %181 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %180, i32 0, i32 3
  store i32* %179, i32** %181, align 8
  store i32 0, i32* %12, align 4
  br label %182

182:                                              ; preds = %220, %165
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %185 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ult i32 %183, %186
  br i1 %187, label %188, label %223

188:                                              ; preds = %182
  %189 = load i32, i32* %12, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %202

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  br label %200

198:                                              ; preds = %193
  %199 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i32 [ %197, %196 ], [ %199, %198 ]
  br label %202

202:                                              ; preds = %200, %191
  %203 = phi i32 [ %192, %191 ], [ %201, %200 ]
  store i32 %203, i32* %11, align 4
  %204 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %205 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %206 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @BIT(i32 %211)
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @mtk_plane_init(%struct.drm_device* %204, i32* %210, i32 %212, i32 %213)
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %202
  %218 = load i32, i32* %14, align 4
  store i32 %218, i32* %4, align 4
  br label %261

219:                                              ; preds = %202
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %12, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %182

223:                                              ; preds = %182
  %224 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %225 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %226 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %227 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %231 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ugt i32 %232, 1
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %236 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  br label %240

239:                                              ; preds = %223
  br label %240

240:                                              ; preds = %239, %234
  %241 = phi i32* [ %238, %234 ], [ null, %239 ]
  %242 = load i32, i32* %13, align 4
  %243 = call i32 @mtk_drm_crtc_init(%struct.drm_device* %224, %struct.mtk_drm_crtc* %225, i32* %229, i32* %241, i32 %242)
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i32, i32* %14, align 4
  store i32 %247, i32* %4, align 4
  br label %261

248:                                              ; preds = %240
  %249 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %250 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %249, i32 0, i32 2
  %251 = load i32, i32* @MTK_LUT_SIZE, align 4
  %252 = call i32 @drm_mode_crtc_set_gamma_size(i32* %250, i32 %251)
  %253 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %10, align 8
  %254 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %253, i32 0, i32 2
  %255 = load i32, i32* @MTK_LUT_SIZE, align 4
  %256 = call i32 @drm_crtc_enable_color_mgmt(i32* %254, i32 0, i32 0, i32 %255)
  %257 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %258 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  store i32 0, i32* %4, align 4
  br label %261

261:                                              ; preds = %248, %246, %217, %146, %108, %92, %68, %53, %32
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.mtk_drm_crtc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.mtk_ddp_comp** @devm_kmalloc_array(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mtk_disp_mutex_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mtk_ddp_comp_layer_nr(%struct.mtk_ddp_comp*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mtk_plane_init(%struct.drm_device*, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mtk_drm_crtc_init(%struct.drm_device*, %struct.mtk_drm_crtc*, i32*, i32*, i32) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
