; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.nouveau_cli = type { %struct.TYPE_14__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.nvif_mmu, %struct.nouveau_drm* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { %struct.nvif_vmm }
%struct.nvif_vmm = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.nvif_vmm, i64 }
%struct.nvif_mmu = type { i64*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.nouveau_drm = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"skipped size %016llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_UNCACHED = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_FERMI = common dso_local global i64 0, align 8
@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NOUVEAU_GEM_TILE_NONCONTIG = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_CURIE = common dso_local global i64 0, align 8
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NVIF_CLASS_MMU_GF100 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nouveau_bo* @nouveau_bo_alloc(%struct.nouveau_cli* %0, i64* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nouveau_bo*, align 8
  %8 = alloca %struct.nouveau_cli*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_drm*, align 8
  %15 = alloca %struct.nouveau_bo*, align 8
  %16 = alloca %struct.nvif_mmu*, align 8
  %17 = alloca %struct.nvif_vmm*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %21 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %20, i32 0, i32 4
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %21, align 8
  store %struct.nouveau_drm* %22, %struct.nouveau_drm** %14, align 8
  %23 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %24 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %23, i32 0, i32 3
  store %struct.nvif_mmu* %24, %struct.nvif_mmu** %16, align 8
  %25 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %26 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %6
  %31 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %32 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  br label %38

34:                                               ; preds = %6
  %35 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %36 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi %struct.nvif_vmm* [ %33, %30 ], [ %37, %34 ]
  store %struct.nvif_vmm* %39, %struct.nvif_vmm** %17, align 8
  store i32 -1, i32* %19, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @NV_WARN(%struct.nouveau_drm* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.nouveau_bo* @ERR_PTR(i32 %49)
  store %struct.nouveau_bo* %50, %struct.nouveau_bo** %7, align 8
  br label %343

51:                                               ; preds = %38
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.nouveau_bo* @kzalloc(i32 56, i32 %52)
  store %struct.nouveau_bo* %53, %struct.nouveau_bo** %15, align 8
  %54 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %55 = icmp ne %struct.nouveau_bo* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.nouveau_bo* @ERR_PTR(i32 %58)
  store %struct.nouveau_bo* %59, %struct.nouveau_bo** %7, align 8
  br label %343

60:                                               ; preds = %51
  %61 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %62 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %61, i32 0, i32 10
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %65 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %64, i32 0, i32 9
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %68 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %67, i32 0, i32 8
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %74 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i32* %72, i32** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @TTM_PL_FLAG_UNCACHED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %60
  %81 = load %struct.nouveau_drm*, %struct.nouveau_drm** %14, align 8
  %82 = call i32 @nouveau_drm_use_coherent_gpu_mapping(%struct.nouveau_drm* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %86 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %90 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NV_DEVICE_INFO_V0_FERMI, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %88
  %97 = load i32, i32* %13, align 4
  %98 = and i32 %97, 65280
  %99 = ashr i32 %98, 8
  %100 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %101 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nvif_mmu*, %struct.nvif_mmu** %16, align 8
  %103 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %104 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @nvif_mmu_kind_valid(%struct.nvif_mmu* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %96
  %109 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %110 = call i32 @kfree(%struct.nouveau_bo* %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  %113 = call %struct.nouveau_bo* @ERR_PTR(i32 %112)
  store %struct.nouveau_bo* %113, %struct.nouveau_bo** %7, align 8
  br label %343

114:                                              ; preds = %96
  %115 = load %struct.nvif_mmu*, %struct.nvif_mmu** %16, align 8
  %116 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %119 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %125 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %123, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %131 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %170

132:                                              ; preds = %88
  %133 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %134 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %132
  %141 = load i32, i32* %13, align 4
  %142 = and i32 %141, 32512
  %143 = ashr i32 %142, 8
  %144 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %145 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 196608
  %148 = ashr i32 %147, 16
  %149 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %150 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.nvif_mmu*, %struct.nvif_mmu** %16, align 8
  %152 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %153 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @nvif_mmu_kind_valid(%struct.nvif_mmu* %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %140
  %158 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %159 = call i32 @kfree(%struct.nouveau_bo* %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  %162 = call %struct.nouveau_bo* @ERR_PTR(i32 %161)
  store %struct.nouveau_bo* %162, %struct.nouveau_bo** %7, align 8
  br label %343

163:                                              ; preds = %140
  br label %169

164:                                              ; preds = %132
  %165 = load i32, i32* %13, align 4
  %166 = and i32 %165, 7
  %167 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %168 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %164, %163
  br label %170

170:                                              ; preds = %169, %114
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %173 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @NOUVEAU_GEM_TILE_NONCONTIG, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %181 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 4
  store i32 0, i32* %18, align 4
  br label %182

182:                                              ; preds = %275, %170
  %183 = load i32, i32* %18, align 4
  %184 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %185 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %278

188:                                              ; preds = %182
  %189 = load %struct.nouveau_cli*, %struct.nouveau_cli** %8, align 8
  %190 = getelementptr inbounds %struct.nouveau_cli, %struct.nouveau_cli* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @NV_DEVICE_INFO_V0_CURIE, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %196
  %202 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %203 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %202, i32 0, i32 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %201
  br label %275

212:                                              ; preds = %201, %196, %188
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* @TTM_PL_FLAG_TT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %212
  %218 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %219 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %218, i32 0, i32 1
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %217
  %228 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %229 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %228, i32 0, i32 1
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @PAGE_SHIFT, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %227, %217
  br label %275

239:                                              ; preds = %227, %212
  %240 = load i32, i32* %19, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %257, label %242

242:                                              ; preds = %239
  %243 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %244 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %242
  %248 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %249 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %248, i32 0, i32 1
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %247, %242, %239
  %258 = load i32, i32* %18, align 4
  store i32 %258, i32* %19, align 4
  br label %259

259:                                              ; preds = %257, %247
  %260 = load i64*, i64** %9, align 8
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %263 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %262, i32 0, i32 1
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %263, align 8
  %265 = load i32, i32* %18, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = zext i32 %269 to i64
  %271 = shl i64 1, %270
  %272 = icmp uge i64 %261, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %259
  br label %278

274:                                              ; preds = %259
  br label %275

275:                                              ; preds = %274, %238, %211
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %18, align 4
  br label %182

278:                                              ; preds = %273, %182
  %279 = load i32, i32* %19, align 4
  %280 = icmp slt i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i64 @WARN_ON(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load i32, i32* @EINVAL, align 4
  %286 = sub nsw i32 0, %285
  %287 = call %struct.nouveau_bo* @ERR_PTR(i32 %286)
  store %struct.nouveau_bo* %287, %struct.nouveau_bo** %7, align 8
  br label %343

288:                                              ; preds = %278
  %289 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %290 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %326

293:                                              ; preds = %288
  %294 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %295 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %294, i32 0, i32 1
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %295, align 8
  %297 = load i32, i32* %19, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %326, label %303

303:                                              ; preds = %293
  %304 = load %struct.nvif_mmu*, %struct.nvif_mmu** %16, align 8
  %305 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @NVIF_CLASS_MMU_GF100, align 8
  %309 = icmp sge i64 %307, %308
  br i1 %309, label %310, label %323

310:                                              ; preds = %303
  %311 = load %struct.nvif_mmu*, %struct.nvif_mmu** %16, align 8
  %312 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %311, i32 0, i32 0
  %313 = load i64*, i64** %312, align 8
  %314 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %315 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %313, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %322 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %321, i32 0, i32 1
  store i32 %320, i32* %322, align 4
  br label %323

323:                                              ; preds = %310, %303
  %324 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %325 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %324, i32 0, i32 2
  store i32 0, i32* %325, align 8
  br label %326

326:                                              ; preds = %323, %293, %288
  %327 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %328 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %327, i32 0, i32 1
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %336 = getelementptr inbounds %struct.nouveau_bo, %struct.nouveau_bo* %335, i32 0, i32 6
  store i32 %334, i32* %336, align 8
  %337 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  %338 = load i32, i32* %11, align 4
  %339 = load i32*, i32** %10, align 8
  %340 = load i64*, i64** %9, align 8
  %341 = call i32 @nouveau_bo_fixup_align(%struct.nouveau_bo* %337, i32 %338, i32* %339, i64* %340)
  %342 = load %struct.nouveau_bo*, %struct.nouveau_bo** %15, align 8
  store %struct.nouveau_bo* %342, %struct.nouveau_bo** %7, align 8
  br label %343

343:                                              ; preds = %326, %284, %157, %108, %56, %43
  %344 = load %struct.nouveau_bo*, %struct.nouveau_bo** %7, align 8
  ret %struct.nouveau_bo* %344
}

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i64) #1

declare dso_local %struct.nouveau_bo* @ERR_PTR(i32) #1

declare dso_local %struct.nouveau_bo* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nouveau_drm_use_coherent_gpu_mapping(%struct.nouveau_drm*) #1

declare dso_local i32 @nvif_mmu_kind_valid(%struct.nvif_mmu*, i32) #1

declare dso_local i32 @kfree(%struct.nouveau_bo*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nouveau_bo_fixup_align(%struct.nouveau_bo*, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
