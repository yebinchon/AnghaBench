; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_map_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_map_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_14__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.nvkm_vma = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.nvkm_vmm_map = type { i32, i32, i32, i32, i32, %struct.TYPE_15__*, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [32 x i8] c"overrun %016llx %016llx %016llx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVKM_VMA_PAGE_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid at any page size\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid %d\0A\00", align 1
@NVKM_RAM_MM_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32, %struct.nvkm_vmm_map*)* @nvkm_vmm_map_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_map_locked(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1, i8* %2, i32 %3, %struct.nvkm_vmm_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_vmm*, align 8
  %8 = alloca %struct.nvkm_vma*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %7, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_vmm_map* %4, %struct.nvkm_vmm_map** %11, align 8
  %17 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @nvkm_memory_size(i32 %19)
  %21 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = icmp slt i64 %20, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %5
  %34 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %35 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %36 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @nvkm_memory_size(i32 %37)
  %39 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %40 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %41, i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %344

49:                                               ; preds = %5
  %50 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %51 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %90

61:                                               ; preds = %55
  %62 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %63 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %14, align 4
  %65 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %66 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %68 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %72 = call i32 @nvkm_vmm_map_choose(%struct.nvkm_vmm* %67, %struct.nvkm_vma* %68, i8* %69, i32 %70, %struct.nvkm_vmm_map* %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %75 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %61
  %79 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %80 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %82 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %86 = call i32 @nvkm_vmm_map_choose(%struct.nvkm_vmm* %81, %struct.nvkm_vma* %82, i8* %83, i32 %84, %struct.nvkm_vmm_map* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %344

89:                                               ; preds = %61
  br label %135

90:                                               ; preds = %55, %49
  %91 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %92 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %98 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %103 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %104
  %106 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %107 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %106, i32 0, i32 5
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %107, align 8
  br label %120

108:                                              ; preds = %90
  %109 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %110 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %115 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %116
  %118 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %119 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %118, i32 0, i32 5
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %119, align 8
  br label %120

120:                                              ; preds = %108, %96
  %121 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %122 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %126 = call i32 @nvkm_vmm_map_valid(%struct.nvkm_vmm* %121, %struct.nvkm_vma* %122, i8* %123, i32 %124, %struct.nvkm_vmm_map* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (%struct.nvkm_vmm*, i8*, ...) @VMM_DEBUG(%struct.nvkm_vmm* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %13, align 4
  store i32 %133, i32* %6, align 4
  br label %344

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %89
  %136 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %137 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %140 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %142 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %141, i32 0, i32 7
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = icmp ne %struct.TYPE_9__* %143, null
  br i1 %144, label %145, label %190

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %172, %145
  %147 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %148 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %146
  %152 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %153 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %152, i32 0, i32 7
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %159 = shl i32 %157, %158
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %162 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %160, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %151
  br label %180

166:                                              ; preds = %151
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %169 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166
  %173 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %174 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %173, i32 0, i32 7
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %179 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %178, i32 0, i32 7
  store %struct.TYPE_9__* %177, %struct.TYPE_9__** %179, align 8
  br label %146

180:                                              ; preds = %165, %146
  %181 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %182 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %181, i32 0, i32 5
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %12, align 4
  br label %262

190:                                              ; preds = %135
  %191 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %192 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %235

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %218, %195
  %197 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %198 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %196
  %202 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %203 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @sg_dma_len(i64 %204)
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %208 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %225

212:                                              ; preds = %201
  %213 = load i32, i32* %16, align 4
  %214 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %215 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212
  %219 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %220 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @sg_next(i64 %221)
  %223 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %224 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %223, i32 0, i32 6
  store i64 %222, i64* %224, align 8
  br label %196

225:                                              ; preds = %211, %196
  %226 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %227 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %226, i32 0, i32 5
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %12, align 4
  br label %261

235:                                              ; preds = %190
  %236 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %237 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PAGE_SHIFT, align 4
  %240 = ashr i32 %238, %239
  %241 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %242 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, %240
  store i32 %244, i32* %242, align 8
  %245 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %246 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @PAGE_MASK, align 4
  %249 = and i32 %247, %248
  %250 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %251 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %253 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %252, i32 0, i32 5
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %12, align 4
  br label %261

261:                                              ; preds = %235, %225
  br label %262

262:                                              ; preds = %261, %180
  %263 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %264 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %301

268:                                              ; preds = %262
  %269 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %270 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %271 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %270, i32 0, i32 5
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %271, align 8
  %273 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %274 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %277 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %280 = load i32, i32* %12, align 4
  %281 = call i32 @nvkm_vmm_ptes_get_map(%struct.nvkm_vmm* %269, %struct.TYPE_15__* %272, i32 %275, i64 %278, %struct.nvkm_vmm_map* %279, i32 %280)
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %13, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %268
  %285 = load i32, i32* %13, align 4
  store i32 %285, i32* %6, align 4
  br label %344

286:                                              ; preds = %268
  %287 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %288 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %287, i32 0, i32 5
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %291 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %290, i32 0, i32 1
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %293, align 8
  %295 = ptrtoint %struct.TYPE_15__* %289 to i64
  %296 = ptrtoint %struct.TYPE_15__* %294 to i64
  %297 = sub i64 %295, %296
  %298 = sdiv exact i64 %297, 8
  %299 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %300 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %299, i32 0, i32 2
  store i64 %298, i64* %300, align 8
  br label %315

301:                                              ; preds = %262
  %302 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %303 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %304 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %303, i32 0, i32 5
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %304, align 8
  %306 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %307 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %310 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %313 = load i32, i32* %12, align 4
  %314 = call i32 @nvkm_vmm_ptes_map(%struct.nvkm_vmm* %302, %struct.TYPE_15__* %305, i32 %308, i64 %311, %struct.nvkm_vmm_map* %312, i32 %313)
  br label %315

315:                                              ; preds = %301, %286
  %316 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %317 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %7, align 8
  %320 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %319, i32 0, i32 0
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %326 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %325, i32 0, i32 4
  %327 = call i32 @nvkm_memory_tags_put(i32 %318, i32 %324, i32* %326)
  %328 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %329 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %328, i32 0, i32 5
  %330 = call i32 @nvkm_memory_unref(i32* %329)
  %331 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %332 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @nvkm_memory_ref(i32 %333)
  %335 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %336 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %335, i32 0, i32 5
  store i32 %334, i32* %336, align 8
  %337 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %338 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %337, i32 0, i32 3
  store i32 1, i32* %338, align 8
  %339 = load %struct.nvkm_vmm_map*, %struct.nvkm_vmm_map** %11, align 8
  %340 = getelementptr inbounds %struct.nvkm_vmm_map, %struct.nvkm_vmm_map* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.nvkm_vma*, %struct.nvkm_vma** %8, align 8
  %343 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %342, i32 0, i32 4
  store i32 %341, i32* %343, align 4
  store i32 0, i32* %6, align 4
  br label %344

344:                                              ; preds = %315, %284, %129, %78, %33
  %345 = load i32, i32* %6, align 4
  ret i32 %345
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @nvkm_memory_size(i32) #1

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, ...) #1

declare dso_local i32 @nvkm_vmm_map_choose(%struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32, %struct.nvkm_vmm_map*) #1

declare dso_local i32 @nvkm_vmm_map_valid(%struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32, %struct.nvkm_vmm_map*) #1

declare dso_local i32 @sg_dma_len(i64) #1

declare dso_local i64 @sg_next(i64) #1

declare dso_local i32 @nvkm_vmm_ptes_get_map(%struct.nvkm_vmm*, %struct.TYPE_15__*, i32, i64, %struct.nvkm_vmm_map*, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_map(%struct.nvkm_vmm*, %struct.TYPE_15__*, i32, i64, %struct.nvkm_vmm_map*, i32) #1

declare dso_local i32 @nvkm_memory_tags_put(i32, i32, i32*) #1

declare dso_local i32 @nvkm_memory_unref(i32*) #1

declare dso_local i32 @nvkm_memory_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
