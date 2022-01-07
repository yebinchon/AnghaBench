; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_uvmm.c_nvkm_uvmm_mthd_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_uvmm = type { %struct.nvkm_vmm*, %struct.TYPE_2__ }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_2__ = type { %struct.nvkm_client* }
%struct.nvkm_client = type { i32 }
%union.anon = type { %struct.nvif_vmm_map_v0 }
%struct.nvif_vmm_map_v0 = type { i64, i64, i64, i64 }
%struct.nvkm_vma = type { i32, i64, i64, i64, i32, i64, i64, i32 }
%struct.nvkm_memory = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"memory %016llx %ld\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"lookup %016llx\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"denied %016llx: %d %d %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pfnmap %016llx\00", align 1
@NVKM_VMA_PAGE_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"split %d %d %d %016llx %016llx %016llx %016llx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_uvmm*, i8*, i32)* @nvkm_uvmm_mthd_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_uvmm_mthd_map(%struct.nvkm_uvmm* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_uvmm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_client*, align 8
  %9 = alloca %union.anon*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nvkm_vmm*, align 8
  %15 = alloca %struct.nvkm_vma*, align 8
  %16 = alloca %struct.nvkm_memory*, align 8
  %17 = alloca i32, align 4
  store %struct.nvkm_uvmm* %0, %struct.nvkm_uvmm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %19 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_client*, %struct.nvkm_client** %20, align 8
  store %struct.nvkm_client* %21, %struct.nvkm_client** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %union.anon*
  store %union.anon* %23, %union.anon** %9, align 8
  %24 = load %struct.nvkm_uvmm*, %struct.nvkm_uvmm** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_uvmm, %struct.nvkm_uvmm* %24, i32 0, i32 0
  %26 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %25, align 8
  store %struct.nvkm_vmm* %26, %struct.nvkm_vmm** %14, align 8
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load %union.anon*, %union.anon** %9, align 8
  %31 = bitcast %union.anon* %30 to %struct.nvif_vmm_map_v0*
  %32 = call i32 @nvif_unpack(i32 %29, i8** %6, i32* %7, %struct.nvif_vmm_map_v0* byval(%struct.nvif_vmm_map_v0) align 8 %31, i32 0, i32 0, i32 1)
  store i32 %32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %3
  %35 = load %union.anon*, %union.anon** %9, align 8
  %36 = bitcast %union.anon* %35 to %struct.nvif_vmm_map_v0*
  %37 = getelementptr inbounds %struct.nvif_vmm_map_v0, %struct.nvif_vmm_map_v0* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %10, align 8
  %39 = load %union.anon*, %union.anon** %9, align 8
  %40 = bitcast %union.anon* %39 to %struct.nvif_vmm_map_v0*
  %41 = getelementptr inbounds %struct.nvif_vmm_map_v0, %struct.nvif_vmm_map_v0* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %union.anon*, %union.anon** %9, align 8
  %44 = bitcast %union.anon* %43 to %struct.nvif_vmm_map_v0*
  %45 = getelementptr inbounds %struct.nvif_vmm_map_v0, %struct.nvif_vmm_map_v0* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load %union.anon*, %union.anon** %9, align 8
  %48 = bitcast %union.anon* %47 to %struct.nvif_vmm_map_v0*
  %49 = getelementptr inbounds %struct.nvif_vmm_map_v0, %struct.nvif_vmm_map_v0* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  br label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %4, align 4
  br label %253

53:                                               ; preds = %34
  %54 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call %struct.nvkm_memory* @nvkm_umem_search(%struct.nvkm_client* %54, i64 %55)
  store %struct.nvkm_memory* %56, %struct.nvkm_memory** %16, align 8
  %57 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %58 = call i64 @IS_ERR(%struct.nvkm_memory* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %65 = call i32 @PTR_ERR(%struct.nvkm_memory* %64)
  %66 = call i32 (%struct.nvkm_vmm*, i8*, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %68 = call i32 @PTR_ERR(%struct.nvkm_memory* %67)
  store i32 %68, i32* %4, align 4
  br label %253

69:                                               ; preds = %53
  %70 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %71 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %17, align 4
  %75 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm* %75, i64 %76)
  store %struct.nvkm_vma* %77, %struct.nvkm_vma** %15, align 8
  %78 = icmp ne %struct.nvkm_vma* %77, null
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %82 = load i64, i64* %10, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (%struct.nvkm_vmm*, i8*, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %247

85:                                               ; preds = %69
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %17, align 4
  %88 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %89 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %94 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %85
  %98 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %99 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ true, %92 ], [ %101, %97 ]
  br i1 %103, label %104, label %121

104:                                              ; preds = %102
  %105 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %106 = load i64, i64* %10, align 8
  %107 = trunc i64 %106 to i32
  %108 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %109 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.nvkm_client*, %struct.nvkm_client** %8, align 8
  %112 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %118 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.nvkm_vmm*, i8*, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %110, i32 %116, i32 %119)
  br label %247

121:                                              ; preds = %102
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %17, align 4
  %124 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %125 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %130 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  %133 = xor i1 %132, true
  br label %134

134:                                              ; preds = %128, %121
  %135 = phi i1 [ false, %121 ], [ %133, %128 ]
  br i1 %135, label %136, label %141

136:                                              ; preds = %134
  %137 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %138 = load i64, i64* %10, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (%struct.nvkm_vmm*, i8*, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  br label %247

141:                                              ; preds = %134
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %17, align 4
  %144 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %145 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %10, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %141
  %150 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %151 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp ne i64 %152, %153
  br label %155

155:                                              ; preds = %149, %141
  %156 = phi i1 [ true, %141 ], [ %154, %149 ]
  br i1 %156, label %157, label %221

157:                                              ; preds = %155
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = add nsw i64 %158, %159
  %161 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %162 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %165 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = icmp sgt i64 %160, %167
  br i1 %168, label %185, label %169

169:                                              ; preds = %157
  %170 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %171 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %169
  %175 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %176 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %209

180:                                              ; preds = %174
  %181 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %182 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %209, label %185

185:                                              ; preds = %180, %169, %157
  %186 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %187 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %188 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %187, i32 0, i32 5
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %195 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %198 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %203 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %206 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (%struct.nvkm_vmm*, i8*, i32, ...) @VMM_DEBUG(%struct.nvkm_vmm* %186, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %193, i64 %196, i32 %199, i64 %200, i64 %201, i64 %204, i64 %207)
  br label %247

209:                                              ; preds = %180, %174
  %210 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %211 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i64, i64* %11, align 8
  %214 = call %struct.nvkm_vma* @nvkm_vmm_node_split(%struct.nvkm_vmm* %210, %struct.nvkm_vma* %211, i64 %212, i64 %213)
  store %struct.nvkm_vma* %214, %struct.nvkm_vma** %15, align 8
  %215 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %216 = icmp ne %struct.nvkm_vma* %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* @ENOMEM, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %17, align 4
  br label %247

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %155
  %222 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %223 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  %224 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %225 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %224, i32 0, i32 0
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load %struct.nvkm_memory*, %struct.nvkm_memory** %16, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %230 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @nvkm_memory_map(%struct.nvkm_memory* %227, i64 %228, %struct.nvkm_vmm* %229, %struct.nvkm_vma* %230, i8* %231, i32 %232)
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %221
  %237 = call i32 @nvkm_memory_unref(%struct.nvkm_memory** %16)
  store i32 0, i32* %4, align 4
  br label %253

238:                                              ; preds = %221
  %239 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %240 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %239, i32 0, i32 0
  %241 = call i32 @mutex_lock(i32* %240)
  %242 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %243 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %242, i32 0, i32 0
  store i32 0, i32* %243, align 8
  %244 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %245 = load %struct.nvkm_vma*, %struct.nvkm_vma** %15, align 8
  %246 = call i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm* %244, %struct.nvkm_vma* %245)
  br label %247

247:                                              ; preds = %238, %217, %185, %136, %104, %80
  %248 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %249 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %248, i32 0, i32 0
  %250 = call i32 @mutex_unlock(i32* %249)
  %251 = call i32 @nvkm_memory_unref(%struct.nvkm_memory** %16)
  %252 = load i32, i32* %17, align 4
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %247, %236, %60, %51
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_vmm_map_v0* byval(%struct.nvif_vmm_map_v0) align 8, i32, i32, i32) #1

declare dso_local %struct.nvkm_memory* @nvkm_umem_search(%struct.nvkm_client*, i64) #1

declare dso_local i64 @IS_ERR(%struct.nvkm_memory*) #1

declare dso_local i32 @VMM_DEBUG(%struct.nvkm_vmm*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.nvkm_memory*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_search(%struct.nvkm_vmm*, i64) #1

declare dso_local %struct.nvkm_vma* @nvkm_vmm_node_split(%struct.nvkm_vmm*, %struct.nvkm_vma*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvkm_memory_map(%struct.nvkm_memory*, i64, %struct.nvkm_vmm*, %struct.nvkm_vma*, i8*, i32) #1

declare dso_local i32 @nvkm_memory_unref(%struct.nvkm_memory**) #1

declare dso_local i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
