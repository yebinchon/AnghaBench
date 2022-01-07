; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.device*, %struct.TYPE_3__, %struct.mtk_drm_private* }
%struct.device = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }
%struct.mtk_drm_private = type { i32, %struct.device*, %struct.TYPE_4__*, %struct.device_node**, %struct.device*, %struct.device_node* }
%struct.TYPE_4__ = type { i64*, i64*, i64*, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }

@platform_bus_type = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Waiting for disp-mutex device %pOF\0A\00", align 1
@mtk_drm_mode_config_funcs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Need at least one OVL device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to set DMA segment size\0A\00", align 1
@MAX_CRTC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @mtk_drm_kms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_kms_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.mtk_drm_private*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 3
  %11 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %10, align 8
  store %struct.mtk_drm_private* %11, %struct.mtk_drm_private** %4, align 8
  %12 = call i32 @iommu_present(i32* @platform_bus_type)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %228

17:                                               ; preds = %1
  %18 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %18, i32 0, i32 5
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  %21 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %20)
  store %struct.platform_device* %21, %struct.platform_device** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = icmp ne %struct.platform_device* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 1
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %29 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %28, i32 0, i32 5
  %30 = load %struct.device_node*, %struct.device_node** %29, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.device_node* %30)
  %32 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %32, i32 0, i32 5
  %34 = load %struct.device_node*, %struct.device_node** %33, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* @EPROBE_DEFER, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %228

38:                                               ; preds = %17
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %41, i32 0, i32 4
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i32 @drm_mode_config_init(%struct.drm_device* %43)
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 64, i32* %47, align 8
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 64, i32* %50, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 4096, i32* %53, align 8
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 4096, i32* %56, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i32* @mtk_drm_mode_config_funcs, i32** %59, align 8
  %60 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 1
  %62 = load %struct.device*, %struct.device** %61, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = call i32 @component_bind_all(%struct.device* %62, %struct.drm_device* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %38
  br label %224

68:                                               ; preds = %38
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %71 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mtk_drm_crtc_create(%struct.drm_device* %69, i64* %74, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %218

84:                                               ; preds = %68
  %85 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %86 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %87 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %92 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mtk_drm_crtc_create(%struct.drm_device* %85, i64* %90, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %84
  br label %218

100:                                              ; preds = %84
  %101 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %102 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %103 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %108 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @mtk_drm_crtc_create(%struct.drm_device* %101, i64* %106, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %218

116:                                              ; preds = %100
  %117 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %118 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %117, i32 0, i32 3
  %119 = load %struct.device_node**, %struct.device_node*** %118, align 8
  %120 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %121 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.device_node*, %struct.device_node** %119, i64 %126
  %128 = load %struct.device_node*, %struct.device_node** %127, align 8
  %129 = icmp ne %struct.device_node* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %144

131:                                              ; preds = %116
  %132 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %133 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %132, i32 0, i32 3
  %134 = load %struct.device_node**, %struct.device_node*** %133, align 8
  %135 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %136 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %135, i32 0, i32 2
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.device_node*, %struct.device_node** %134, i64 %141
  %143 = load %struct.device_node*, %struct.device_node** %142, align 8
  br label %144

144:                                              ; preds = %131, %130
  %145 = phi %struct.device_node* [ %128, %130 ], [ %143, %131 ]
  store %struct.device_node* %145, %struct.device_node** %6, align 8
  %146 = load %struct.device_node*, %struct.device_node** %6, align 8
  %147 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %146)
  store %struct.platform_device* %147, %struct.platform_device** %5, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %149 = icmp ne %struct.platform_device* %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  %153 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %154 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %153, i32 0, i32 1
  %155 = load %struct.device*, %struct.device** %154, align 8
  %156 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %218

157:                                              ; preds = %144
  %158 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  store %struct.device* %159, %struct.device** %7, align 8
  %160 = load %struct.device*, %struct.device** %7, align 8
  %161 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %162 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %161, i32 0, i32 1
  store %struct.device* %160, %struct.device** %162, align 8
  %163 = load %struct.device*, %struct.device** %7, align 8
  %164 = getelementptr inbounds %struct.device, %struct.device* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %177, label %167

167:                                              ; preds = %157
  %168 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %169 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %171 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %170, i32 0, i32 1
  %172 = load %struct.device*, %struct.device** %171, align 8
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i32* @devm_kzalloc(%struct.device* %172, i32 4, i32 %173)
  %175 = load %struct.device*, %struct.device** %7, align 8
  %176 = getelementptr inbounds %struct.device, %struct.device* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  br label %177

177:                                              ; preds = %167, %157
  %178 = load %struct.device*, %struct.device** %7, align 8
  %179 = getelementptr inbounds %struct.device, %struct.device* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %8, align 4
  br label %218

185:                                              ; preds = %177
  %186 = load %struct.device*, %struct.device** %7, align 8
  %187 = call i64 @DMA_BIT_MASK(i32 32)
  %188 = trunc i64 %187 to i32
  %189 = call i32 @dma_set_max_seg_size(%struct.device* %186, i32 %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load %struct.device*, %struct.device** %7, align 8
  %194 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %209

195:                                              ; preds = %185
  %196 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %197 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %199 = load i32, i32* @MAX_CRTC, align 4
  %200 = call i32 @drm_vblank_init(%struct.drm_device* %198, i32 %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %209

204:                                              ; preds = %195
  %205 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %206 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %205)
  %207 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %208 = call i32 @drm_mode_config_reset(%struct.drm_device* %207)
  store i32 0, i32* %2, align 4
  br label %228

209:                                              ; preds = %203, %192
  %210 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %211 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load %struct.device*, %struct.device** %7, align 8
  %216 = getelementptr inbounds %struct.device, %struct.device* %215, i32 0, i32 0
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %214, %209
  br label %218

218:                                              ; preds = %217, %182, %150, %115, %99, %83
  %219 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %220 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %219, i32 0, i32 1
  %221 = load %struct.device*, %struct.device** %220, align 8
  %222 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %223 = call i32 @component_unbind_all(%struct.device* %221, %struct.drm_device* %222)
  br label %224

224:                                              ; preds = %218, %67
  %225 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %226 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %225)
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %224, %204, %24, %14
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @iommu_present(i32*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @mtk_drm_crtc_create(%struct.drm_device*, i64*, i32) #1

declare dso_local i32* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.device*, i32) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
