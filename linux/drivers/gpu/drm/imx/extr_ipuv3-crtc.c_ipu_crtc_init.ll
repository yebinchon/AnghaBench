; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-crtc.c_ipu_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_crtc = type { %struct.TYPE_8__**, i32, %struct.TYPE_9__*, %struct.drm_crtc }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.ipu_client_platformdata = type { i64, i32*, i32 }
%struct.drm_device = type { i32 }
%struct.ipu_soc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"getting resources failed with %d.\0A\00", align 1
@IPU_DP_FLOW_SYNC_BG = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@ipu_helper_funcs = common dso_local global i32 0, align 4
@ipu_crtc_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"getting plane 0 resources failed with %d.\0A\00", align 1
@IPU_DP_FLOW_SYNC_FG = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"getting plane 1 resources failed with %d.\0A\00", align 1
@ipu_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"imx_drm\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"irq request failed with %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_crtc*, %struct.ipu_client_platformdata*, %struct.drm_device*)* @ipu_crtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_crtc_init(%struct.ipu_crtc* %0, %struct.ipu_client_platformdata* %1, %struct.drm_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_crtc*, align 8
  %6 = alloca %struct.ipu_client_platformdata*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.ipu_soc*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipu_crtc* %0, %struct.ipu_crtc** %5, align 8
  store %struct.ipu_client_platformdata* %1, %struct.ipu_client_platformdata** %6, align 8
  store %struct.drm_device* %2, %struct.drm_device** %7, align 8
  %12 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ipu_soc* @dev_get_drvdata(i32 %16)
  store %struct.ipu_soc* %17, %struct.ipu_soc** %8, align 8
  %18 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %18, i32 0, i32 3
  store %struct.drm_crtc* %19, %struct.drm_crtc** %9, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %23 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %24 = call i32 @ipu_get_resources(%struct.ipu_crtc* %22, %struct.ipu_client_platformdata* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @dev_err(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %219

34:                                               ; preds = %3
  %35 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %36 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @IPU_DP_FLOW_SYNC_BG, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %43 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %44 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %45 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %51 = call i8* @ipu_plane_init(%struct.drm_device* %42, %struct.ipu_soc* %43, i32 %48, i32 %49, i32 0, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_8__*
  %53 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %54 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %55, i64 0
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %58 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %59, i64 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = call i64 @IS_ERR(%struct.TYPE_8__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %41
  %65 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %66 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %67, i64 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_8__* %69)
  store i32 %70, i32* %11, align 4
  br label %215

71:                                               ; preds = %41
  %72 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %73 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %78 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %77, i32* @ipu_helper_funcs)
  %79 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %81 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %82 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %83, i64 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %79, %struct.drm_crtc* %80, i32* %86, i32* null, i32* @ipu_crtc_funcs, i32* null)
  %88 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %89 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %90, i64 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @ipu_plane_get_resources(%struct.TYPE_8__* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %71
  %97 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %98 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @dev_err(%struct.TYPE_9__* %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %215

102:                                              ; preds = %71
  %103 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %104 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %162

107:                                              ; preds = %102
  %108 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %109 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %162

114:                                              ; preds = %107
  %115 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %116 = load %struct.ipu_soc*, %struct.ipu_soc** %8, align 8
  %117 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %6, align 8
  %118 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IPU_DP_FLOW_SYNC_FG, align 4
  %123 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %124 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %123, i32 0, i32 3
  %125 = call i32 @drm_crtc_mask(%struct.drm_crtc* %124)
  %126 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %127 = call i8* @ipu_plane_init(%struct.drm_device* %115, %struct.ipu_soc* %116, i32 %121, i32 %122, i32 %125, i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_8__*
  %129 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %130 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %131, i64 1
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %132, align 8
  %133 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %134 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %135, i64 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call i64 @IS_ERR(%struct.TYPE_8__* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %114
  %141 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %142 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %141, i32 0, i32 0
  %143 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %143, i64 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %144, align 8
  br label %161

145:                                              ; preds = %114
  %146 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %147 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %148, i64 1
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = call i32 @ipu_plane_get_resources(%struct.TYPE_8__* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %156 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @dev_err(%struct.TYPE_9__* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  br label %208

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161, %107, %102
  %163 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %164 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %165, i64 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = call i32 @ipu_plane_irq(%struct.TYPE_8__* %167)
  %169 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %170 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %172 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %171, i32 0, i32 2
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %175 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ipu_irq_handler, align 4
  %178 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %179 = call i32 @devm_request_irq(%struct.TYPE_9__* %173, i32 %176, i32 %177, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.ipu_crtc* %178)
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %162
  %183 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %184 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %183, i32 0, i32 2
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @dev_err(%struct.TYPE_9__* %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %193

188:                                              ; preds = %162
  %189 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %190 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @disable_irq(i32 %191)
  store i32 0, i32* %4, align 4
  br label %219

193:                                              ; preds = %182
  %194 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %195 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %196, i64 1
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %202 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %203, i64 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = call i32 @ipu_plane_put_resources(%struct.TYPE_8__* %205)
  br label %207

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207, %154
  %209 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %210 = getelementptr inbounds %struct.ipu_crtc, %struct.ipu_crtc* %209, i32 0, i32 0
  %211 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %211, i64 0
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = call i32 @ipu_plane_put_resources(%struct.TYPE_8__* %213)
  br label %215

215:                                              ; preds = %208, %96, %64
  %216 = load %struct.ipu_crtc*, %struct.ipu_crtc** %5, align 8
  %217 = call i32 @ipu_put_resources(%struct.ipu_crtc* %216)
  %218 = load i32, i32* %11, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %215, %188, %27
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local %struct.ipu_soc* @dev_get_drvdata(i32) #1

declare dso_local i32 @ipu_get_resources(%struct.ipu_crtc*, %struct.ipu_client_platformdata*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i8* @ipu_plane_init(%struct.drm_device*, %struct.ipu_soc*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, %struct.drm_crtc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ipu_plane_get_resources(%struct.TYPE_8__*) #1

declare dso_local i32 @drm_crtc_mask(%struct.drm_crtc*) #1

declare dso_local i32 @ipu_plane_irq(%struct.TYPE_8__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_9__*, i32, i32, i32, i8*, %struct.ipu_crtc*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ipu_plane_put_resources(%struct.TYPE_8__*) #1

declare dso_local i32 @ipu_put_resources(%struct.ipu_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
