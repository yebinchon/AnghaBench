; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_display.c_nouveau_display_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32* }
%struct.nouveau_drm = type { %struct.TYPE_20__, i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.nouveau_display* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.nouveau_display = type { i32 (%struct.drm_device.0*)*, %struct.TYPE_12__ }
%struct.drm_device.0 = type opaque
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.nvkm_device = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.nvkm_device*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_mode_config_funcs = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CELSIUS = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@nouveau_modeset = common dso_local global i32 0, align 4
@NV50_DISP = common dso_local global i64 0, align 8
@nouveau_display_hpd_work = common dso_local global i32 0, align 4
@nouveau_display_acpi_ntfy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_display_create(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nouveau_display*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %4, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = call %struct.nvkm_device* @nvxx_device(%struct.TYPE_21__* %12)
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nouveau_display* @kzalloc(i32 16, i32 %14)
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %16, i32 0, i32 4
  store %struct.nouveau_display* %15, %struct.nouveau_display** %17, align 8
  store %struct.nouveau_display* %15, %struct.nouveau_display** %6, align 8
  %18 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %19 = icmp ne %struct.nouveau_display* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %206

23:                                               ; preds = %1
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i32 @drm_mode_config_init(%struct.drm_device* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i32 @drm_mode_create_scaling_mode_property(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = call i32 @drm_mode_create_dvi_i_properties(%struct.drm_device* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 9
  store i32* @nouveau_mode_config_funcs, i32** %32, align 8
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %34 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %36, align 8
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %39 = call i32 %37(%struct.nvkm_device* %38, i32 1)
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 8
  store i32 %39, i32* %42, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NV_DEVICE_INFO_V0_CELSIUS, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %23
  %58 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 2048, i32* %60, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  store i32 2048, i32* %63, align 4
  br label %105

64:                                               ; preds = %23
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  store i32 4096, i32* %76, align 8
  %77 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %78 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i32 4096, i32* %79, align 4
  br label %104

80:                                               ; preds = %64
  %81 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %82 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  store i32 8192, i32* %92, align 8
  %93 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %94 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i32 8192, i32* %95, align 4
  br label %103

96:                                               ; preds = %80
  %97 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %98 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 16384, i32* %99, align 8
  %100 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %101 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store i32 16384, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %89
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %57
  %106 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %107 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  store i32 24, i32* %108, align 8
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  store i32 1, i32* %111, align 4
  %112 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %113 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %117, 17
  br i1 %118, label %119, label %123

119:                                              ; preds = %105
  %120 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 4
  store i32 0, i32* %122, align 8
  br label %127

123:                                              ; preds = %105
  %124 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %125 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %119
  %128 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %129 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %128)
  %130 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %131 = call i32 @drm_kms_helper_poll_disable(%struct.drm_device* %130)
  %132 = load i32, i32* @nouveau_modeset, align 4
  %133 = icmp ne i32 %132, 2
  br i1 %133, label %134, label %168

134:                                              ; preds = %127
  %135 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %136 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %168

141:                                              ; preds = %134
  %142 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %143 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %146 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %145, i32 0, i32 1
  %147 = call i32 @nvif_disp_ctor(%struct.TYPE_21__* %144, i32 0, %struct.TYPE_12__* %146)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %167

150:                                              ; preds = %141
  %151 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %152 = call i32 @nouveau_display_create_properties(%struct.drm_device* %151)
  %153 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %154 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NV50_DISP, align 8
  %159 = icmp slt i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %150
  %161 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %162 = call i32 @nv04_display_create(%struct.drm_device* %161)
  store i32 %162, i32* %7, align 4
  br label %166

163:                                              ; preds = %150
  %164 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %165 = call i32 @nv50_display_create(%struct.drm_device* %164)
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %163, %160
  br label %167

167:                                              ; preds = %166, %141
  br label %169

168:                                              ; preds = %134, %127
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %168, %167
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %200

173:                                              ; preds = %169
  %174 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %175 = call i32 @drm_mode_config_reset(%struct.drm_device* %174)
  %176 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %177 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %183 = call i32 @nouveau_display_vblank_init(%struct.drm_device* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %193

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %187, %173
  %189 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %190 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %189, i32 0, i32 1
  %191 = load i32, i32* @nouveau_display_hpd_work, align 4
  %192 = call i32 @INIT_WORK(i32* %190, i32 %191)
  store i32 0, i32* %2, align 4
  br label %206

193:                                              ; preds = %186
  %194 = load %struct.nouveau_display*, %struct.nouveau_display** %6, align 8
  %195 = getelementptr inbounds %struct.nouveau_display, %struct.nouveau_display* %194, i32 0, i32 0
  %196 = load i32 (%struct.drm_device.0*)*, i32 (%struct.drm_device.0*)** %195, align 8
  %197 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %198 = bitcast %struct.drm_device* %197 to %struct.drm_device.0*
  %199 = call i32 %196(%struct.drm_device.0* %198)
  br label %200

200:                                              ; preds = %193, %172
  %201 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %202 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %201)
  %203 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %204 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %203)
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %200, %188, %20
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_device* @nvxx_device(%struct.TYPE_21__*) #1

declare dso_local %struct.nouveau_display* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_scaling_mode_property(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_create_dvi_i_properties(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_disable(%struct.drm_device*) #1

declare dso_local i32 @nvif_disp_ctor(%struct.TYPE_21__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @nouveau_display_create_properties(%struct.drm_device*) #1

declare dso_local i32 @nv04_display_create(%struct.drm_device*) #1

declare dso_local i32 @nv50_display_create(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @nouveau_display_vblank_init(%struct.drm_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
