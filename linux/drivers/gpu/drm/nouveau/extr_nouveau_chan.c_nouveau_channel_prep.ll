; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_chan.c_nouveau_channel_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i64, i64 }
%struct.nvif_device = type { %struct.TYPE_17__, %struct.TYPE_24__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.nouveau_channel = type { %struct.TYPE_27__, %struct.TYPE_19__*, %struct.nouveau_drm*, i32, %struct.nvif_device* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_20__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.nouveau_cli = type { %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.nv_dma_v0 = type { i64, i64, i8*, i8* }
%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_28__*, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@TTM_PL_FLAG_UNCACHED = common dso_local global i32 0, align 4
@nouveau_vram_pushbuf = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@NV_DMA_V0_TARGET_VM = common dso_local global i8* null, align 8
@NV_DMA_V0_ACCESS_VM = common dso_local global i8* null, align 8
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TNT = common dso_local global i64 0, align 8
@NV_DMA_V0_TARGET_PCI = common dso_local global i8* null, align 8
@NV_DMA_V0_ACCESS_RDWR = common dso_local global i8* null, align 8
@NV_DMA_V0_TARGET_VRAM = common dso_local global i8* null, align 8
@NV_DMA_V0_TARGET_AGP = common dso_local global i8* null, align 8
@NV_DMA_FROM_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, %struct.nvif_device*, i32, %struct.nouveau_channel**)* @nouveau_channel_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_channel_prep(%struct.nouveau_drm* %0, %struct.nvif_device* %1, i32 %2, %struct.nouveau_channel** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca %struct.nvif_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nouveau_channel**, align 8
  %10 = alloca %struct.nouveau_cli*, align 8
  %11 = alloca %struct.nv_dma_v0, align 8
  %12 = alloca %struct.nouveau_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %6, align 8
  store %struct.nvif_device* %1, %struct.nvif_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nouveau_channel** %3, %struct.nouveau_channel*** %9, align 8
  %15 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %16 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.nouveau_cli*
  store %struct.nouveau_cli* %20, %struct.nouveau_cli** %10, align 8
  %21 = bitcast %struct.nv_dma_v0* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 32, i1 false)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nouveau_channel* @kzalloc(i32 64, i32 %22)
  %24 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %9, align 8
  store %struct.nouveau_channel* %23, %struct.nouveau_channel** %24, align 8
  store %struct.nouveau_channel* %23, %struct.nouveau_channel** %12, align 8
  %25 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %26 = icmp ne %struct.nouveau_channel* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %282

30:                                               ; preds = %4
  %31 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %32 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %33 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %32, i32 0, i32 4
  store %struct.nvif_device* %31, %struct.nvif_device** %33, align 8
  %34 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %35 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %36 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %35, i32 0, i32 2
  store %struct.nouveau_drm* %34, %struct.nouveau_drm** %36, align 8
  %37 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %38 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %44 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %43, i32 0, i32 1
  br label %48

45:                                               ; preds = %30
  %46 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %47 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %46, i32 0, i32 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi %struct.TYPE_19__* [ %44, %42 ], [ %47, %45 ]
  %50 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %51 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %50, i32 0, i32 1
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %51, align 8
  %52 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %53 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %52, i32 0, i32 3
  %54 = call i32 @atomic_set(i32* %53, i32 0)
  %55 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %56 = load i32, i32* @TTM_PL_FLAG_UNCACHED, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i64, i64* @nouveau_vram_pushbuf, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %48
  %63 = load %struct.nouveau_cli*, %struct.nouveau_cli** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %67 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 1
  %69 = call i32 @nouveau_bo_new(%struct.nouveau_cli* %63, i32 %64, i32 0, i32 %65, i32 0, i32 0, i32* null, i32* null, %struct.TYPE_18__** %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %62
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %74 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @nouveau_bo_pin(%struct.TYPE_18__* %76, i32 %77, i32 0)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %83 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = call i32 @nouveau_bo_map(%struct.TYPE_18__* %85)
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %81, %72
  br label %88

88:                                               ; preds = %87, %62
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %9, align 8
  %93 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %5, align 4
  br label %282

95:                                               ; preds = %88
  %96 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %97 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %104 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 8
  %106 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %107 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %161

112:                                              ; preds = %95
  %113 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %114 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %118 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %121 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 2
  %123 = call i32 @nouveau_vma_new(%struct.TYPE_18__* %116, %struct.TYPE_19__* %119, %struct.TYPE_20__** %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %112
  %127 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %9, align 8
  %128 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %127)
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %5, align 4
  br label %282

130:                                              ; preds = %112
  %131 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %132 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %138 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 8
  %140 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %141 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  br label %282

147:                                              ; preds = %130
  %148 = load i8*, i8** @NV_DMA_V0_TARGET_VM, align 8
  %149 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 3
  store i8* %148, i8** %149, align 8
  %150 = load i8*, i8** @NV_DMA_V0_ACCESS_VM, align 8
  %151 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 2
  store i8* %150, i8** %151, align 8
  %152 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %154 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %153, i32 0, i32 1
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %158, 1
  %160 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 0
  store i64 %159, i64* %160, align 8
  br label %267

161:                                              ; preds = %95
  %162 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %163 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @TTM_PL_VRAM, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %216

172:                                              ; preds = %161
  %173 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %174 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NV_DEVICE_INFO_V0_TNT, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %203

179:                                              ; preds = %172
  %180 = load i8*, i8** @NV_DMA_V0_TARGET_PCI, align 8
  %181 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 3
  store i8* %180, i8** %181, align 8
  %182 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %183 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 2
  store i8* %182, i8** %183, align 8
  %184 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %185 = call %struct.TYPE_28__* @nvxx_device(%struct.nvif_device* %184)
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i64 (%struct.TYPE_28__*, i32)*, i64 (%struct.TYPE_28__*, i32)** %188, align 8
  %190 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %191 = call %struct.TYPE_28__* @nvxx_device(%struct.nvif_device* %190)
  %192 = call i64 %189(%struct.TYPE_28__* %191, i32 1)
  %193 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  store i64 %192, i64* %193, align 8
  %194 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %197 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = add nsw i64 %195, %199
  %201 = sub nsw i64 %200, 1
  %202 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 0
  store i64 %201, i64* %202, align 8
  br label %215

203:                                              ; preds = %172
  %204 = load i8*, i8** @NV_DMA_V0_TARGET_VRAM, align 8
  %205 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 3
  store i8* %204, i8** %205, align 8
  %206 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %207 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 2
  store i8* %206, i8** %207, align 8
  %208 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  store i64 0, i64* %208, align 8
  %209 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %210 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %212, 1
  %214 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 0
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %203, %179
  br label %266

216:                                              ; preds = %161
  %217 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %218 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %217, i32 0, i32 2
  %219 = load %struct.nouveau_drm*, %struct.nouveau_drm** %218, align 8
  %220 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %251

224:                                              ; preds = %216
  %225 = load i8*, i8** @NV_DMA_V0_TARGET_AGP, align 8
  %226 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 3
  store i8* %225, i8** %226, align 8
  %227 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %228 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 2
  store i8* %227, i8** %228, align 8
  %229 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %230 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %229, i32 0, i32 2
  %231 = load %struct.nouveau_drm*, %struct.nouveau_drm** %230, align 8
  %232 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  store i64 %234, i64* %235, align 8
  %236 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %237 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %236, i32 0, i32 2
  %238 = load %struct.nouveau_drm*, %struct.nouveau_drm** %237, align 8
  %239 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %243 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %242, i32 0, i32 2
  %244 = load %struct.nouveau_drm*, %struct.nouveau_drm** %243, align 8
  %245 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %241, %247
  %249 = sub nsw i64 %248, 1
  %250 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 0
  store i64 %249, i64* %250, align 8
  br label %265

251:                                              ; preds = %216
  %252 = load i8*, i8** @NV_DMA_V0_TARGET_VM, align 8
  %253 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 3
  store i8* %252, i8** %253, align 8
  %254 = load i8*, i8** @NV_DMA_V0_ACCESS_RDWR, align 8
  %255 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 2
  store i8* %254, i8** %255, align 8
  %256 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 1
  store i64 0, i64* %256, align 8
  %257 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %258 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %257, i32 0, i32 1
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = sub nsw i64 %262, 1
  %264 = getelementptr inbounds %struct.nv_dma_v0, %struct.nv_dma_v0* %11, i32 0, i32 0
  store i64 %263, i64* %264, align 8
  br label %265

265:                                              ; preds = %251, %224
  br label %266

266:                                              ; preds = %265, %215
  br label %267

267:                                              ; preds = %266, %147
  %268 = load %struct.nvif_device*, %struct.nvif_device** %7, align 8
  %269 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %268, i32 0, i32 0
  %270 = load i32, i32* @NV_DMA_FROM_MEMORY, align 4
  %271 = load %struct.nouveau_channel*, %struct.nouveau_channel** %12, align 8
  %272 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  %274 = call i32 @nvif_object_init(%struct.TYPE_17__* %269, i32 0, i32 %270, %struct.nv_dma_v0* %11, i32 32, i32* %273)
  store i32 %274, i32* %14, align 4
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %267
  %278 = load %struct.nouveau_channel**, %struct.nouveau_channel*** %9, align 8
  %279 = call i32 @nouveau_channel_del(%struct.nouveau_channel** %278)
  %280 = load i32, i32* %14, align 4
  store i32 %280, i32* %5, align 4
  br label %282

281:                                              ; preds = %267
  store i32 0, i32* %5, align 4
  br label %282

282:                                              ; preds = %281, %277, %146, %126, %91, %27
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nouveau_channel* @kzalloc(i32, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @nouveau_bo_new(%struct.nouveau_cli*, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_18__**) #2

declare dso_local i32 @nouveau_bo_pin(%struct.TYPE_18__*, i32, i32) #2

declare dso_local i32 @nouveau_bo_map(%struct.TYPE_18__*) #2

declare dso_local i32 @nouveau_channel_del(%struct.nouveau_channel**) #2

declare dso_local i32 @nouveau_vma_new(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__**) #2

declare dso_local %struct.TYPE_28__* @nvxx_device(%struct.nvif_device*) #2

declare dso_local i32 @nvif_object_init(%struct.TYPE_17__*, i32, i32, %struct.nv_dma_v0*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
