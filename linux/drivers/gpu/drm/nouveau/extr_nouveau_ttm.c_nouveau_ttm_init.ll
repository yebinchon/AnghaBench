; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_ttm.c_nouveau_ttm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.drm_device* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_13__, %struct.nvif_mmu }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i64, i32 }
%struct.nvif_mmu = type { i32 }
%struct.drm_device = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.nvkm_device = type { %struct.TYPE_17__*, %struct.nvkm_pci* }
%struct.TYPE_17__ = type { i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)* }
%struct.nvkm_pci = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }

@NV_DEVICE_INFO_V0_TESLA = common dso_local global i64 0, align 8
@NVIF_MEM_KIND = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_SOC = common dso_local global i64 0, align 8
@NVIF_MEM_VRAM = common dso_local global i32 0, align 4
@NVIF_MEM_MAPPABLE = common dso_local global i32 0, align 4
@NVIF_MEM_COMP = common dso_local global i32 0, align 4
@NVIF_MEM_DISP = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@nouveau_bo_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"error initialising bo driver, %d\0A\00", align 1
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VRAM mm init failed, %d\0A\00", align 1
@TTM_PL_TT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"GART mm init failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"VRAM: %d MiB\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"GART: %d MiB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_ttm_init(%struct.nouveau_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_pci*, align 8
  %6 = alloca %struct.nvif_mmu*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %3, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %13 = call %struct.nvkm_device* @nvxx_device(%struct.TYPE_13__* %12)
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %14, i32 0, i32 1
  %16 = load %struct.nvkm_pci*, %struct.nvkm_pci** %15, align 8
  store %struct.nvkm_pci* %16, %struct.nvkm_pci** %5, align 8
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  store %struct.nvif_mmu* %19, %struct.nvif_mmu** %6, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 4
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %7, align 8
  %23 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %24 = call i32 @nouveau_ttm_init_host(%struct.nouveau_drm* %23, i32 0)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %281

29:                                               ; preds = %1
  %30 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %29
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 80
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %48 = load i32, i32* @NVIF_MEM_KIND, align 4
  %49 = call i32 @nouveau_ttm_init_host(%struct.nouveau_drm* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %281

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %38, %29
  %56 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %57 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NV_DEVICE_INFO_V0_SOC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %55
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NV_DEVICE_INFO_V0_TESLA, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %64
  %74 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %75 = load i32, i32* @NVIF_MEM_VRAM, align 4
  %76 = load i32, i32* @NVIF_MEM_MAPPABLE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @NVIF_MEM_KIND, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @NVIF_MEM_COMP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @NVIF_MEM_DISP, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @nvif_mmu_type(%struct.nvif_mmu* %74, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %73
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %281

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %93 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %99

95:                                               ; preds = %64, %55
  %96 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %97 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %101 = icmp ne %struct.nvkm_pci* %100, null
  br i1 %101, label %102, label %137

102:                                              ; preds = %99
  %103 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %104 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %102
  %109 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %110 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %114 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %117 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %121 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %124 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %128 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.nvkm_pci*, %struct.nvkm_pci** %5, align 8
  %131 = getelementptr inbounds %struct.nvkm_pci, %struct.nvkm_pci* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %135 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 8
  br label %137

137:                                              ; preds = %108, %102, %99
  %138 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %139 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %142 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %147 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp sle i32 %150, 32
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = call i32 @ttm_bo_device_init(i32* %140, i32* @nouveau_bo_driver, i32 %145, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %137
  %158 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @NV_ERROR(%struct.nouveau_drm* %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %2, align 4
  br label %281

162:                                              ; preds = %137
  %163 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %164 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %170 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %173 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %172, i32 0, i32 0
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %175, align 8
  %177 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %178 = call i32 %176(%struct.nvkm_device* %177, i32 1)
  %179 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %180 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %179, i32 0, i32 0
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %182, align 8
  %184 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %185 = call i32 %183(%struct.nvkm_device* %184, i32 1)
  %186 = call i32 @arch_io_reserve_memtype_wc(i32 %178, i32 %185)
  %187 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %188 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 1
  %190 = load i32, i32* @TTM_PL_VRAM, align 4
  %191 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %192 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PAGE_SHIFT, align 4
  %196 = ashr i32 %194, %195
  %197 = call i32 @ttm_bo_init_mm(i32* %189, i32 %190, i32 %196)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %162
  %201 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @NV_ERROR(%struct.nouveau_drm* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %2, align 4
  br label %281

205:                                              ; preds = %162
  %206 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %207 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %206, i32 0, i32 0
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %209, align 8
  %211 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %212 = call i32 %210(%struct.nvkm_device* %211, i32 1)
  %213 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %214 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %213, i32 0, i32 0
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %216, align 8
  %218 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %219 = call i32 %217(%struct.nvkm_device* %218, i32 1)
  %220 = call i32 @arch_phys_wc_add(i32 %212, i32 %219)
  %221 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %222 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  store i32 %220, i32* %223, align 8
  %224 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %225 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %239, label %229

229:                                              ; preds = %205
  %230 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %231 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %237 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  br label %247

239:                                              ; preds = %205
  %240 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %241 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %245 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  store i32 %243, i32* %246, align 4
  br label %247

247:                                              ; preds = %239, %229
  %248 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %249 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 1
  %251 = load i32, i32* @TTM_PL_TT, align 4
  %252 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %253 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @PAGE_SHIFT, align 4
  %257 = ashr i32 %255, %256
  %258 = call i32 @ttm_bo_init_mm(i32* %250, i32 %251, i32 %257)
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %247
  %262 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @NV_ERROR(%struct.nouveau_drm* %262, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %9, align 4
  store i32 %265, i32* %2, align 4
  br label %281

266:                                              ; preds = %247
  %267 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %268 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %269 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = ashr i32 %271, 20
  %273 = call i32 @NV_INFO(%struct.nouveau_drm* %267, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %272)
  %274 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %275 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %276 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = ashr i32 %278, 20
  %280 = call i32 @NV_INFO(%struct.nouveau_drm* %274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  store i32 0, i32* %2, align 4
  br label %281

281:                                              ; preds = %266, %261, %200, %157, %87, %52, %27
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local %struct.nvkm_device* @nvxx_device(%struct.TYPE_13__*) #1

declare dso_local i32 @nouveau_ttm_init_host(%struct.nouveau_drm*, i32) #1

declare dso_local i32 @nvif_mmu_type(%struct.nvif_mmu*, i32) #1

declare dso_local i32 @ttm_bo_device_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @arch_io_reserve_memtype_wc(i32, i32) #1

declare dso_local i32 @ttm_bo_init_mm(i32*, i32, i32) #1

declare dso_local i32 @arch_phys_wc_add(i32, i32) #1

declare dso_local i32 @NV_INFO(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
