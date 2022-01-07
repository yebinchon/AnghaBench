; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm_func = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i64, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_desc = type { i32, i32, i32 }
%struct.nvkm_mmu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvkm_vmm = type { i8*, i64, i64, i32, i8*, i8*, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.nvkm_mmu*, %struct.nvkm_vmm_func* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.nvkm_vma = type { i32 }

@nvkm_vmm_ctor._key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"&vmm->mutex\00", align 1
@NVKM_VMM_LEVELS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_vmm_ctor(%struct.nvkm_vmm_func* %0, %struct.nvkm_mmu* %1, i64 %2, i32 %3, i64 %4, i64 %5, %struct.lock_class_key* %6, i8* %7, %struct.nvkm_vmm* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_func*, align 8
  %12 = alloca %struct.nvkm_mmu*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.lock_class_key*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nvkm_vmm*, align 8
  %20 = alloca %struct.nvkm_vmm_page*, align 8
  %21 = alloca %struct.nvkm_vmm_desc*, align 8
  %22 = alloca %struct.nvkm_vma*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func** %11, align 8
  store %struct.nvkm_mmu* %1, %struct.nvkm_mmu** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.lock_class_key* %6, %struct.lock_class_key** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.nvkm_vmm* %8, %struct.nvkm_vmm** %19, align 8
  %27 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %11, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_func, %struct.nvkm_vmm_func* %27, i32 0, i32 0
  %29 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %28, align 8
  store %struct.nvkm_vmm_page* %29, %struct.nvkm_vmm_page** %20, align 8
  store i32 0, i32* %24, align 4
  %30 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %11, align 8
  %31 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %31, i32 0, i32 12
  store %struct.nvkm_vmm_func* %30, %struct.nvkm_vmm_func** %32, align 8
  %33 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %12, align 8
  %34 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %35 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %34, i32 0, i32 11
  store %struct.nvkm_mmu* %33, %struct.nvkm_mmu** %35, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %38 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %12, align 8
  %40 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %44 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %46 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %45, i32 0, i32 9
  %47 = call i32 @kref_init(i32* %46)
  %48 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %49 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %48, i32 0, i32 8
  %50 = load %struct.lock_class_key*, %struct.lock_class_key** %17, align 8
  %51 = icmp ne %struct.lock_class_key* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %9
  %53 = load %struct.lock_class_key*, %struct.lock_class_key** %17, align 8
  br label %55

54:                                               ; preds = %9
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi %struct.lock_class_key* [ %53, %52 ], [ @nvkm_vmm_ctor._key, %54 ]
  %57 = call i32 @__mutex_init(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.lock_class_key* %56)
  br label %58

58:                                               ; preds = %64, %55
  %59 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %20, align 8
  %60 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %59, i64 1
  %61 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %20, align 8
  %66 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %65, i32 1
  store %struct.nvkm_vmm_page* %66, %struct.nvkm_vmm_page** %20, align 8
  br label %58

67:                                               ; preds = %58
  store i32 0, i32* %23, align 4
  %68 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %20, align 8
  %69 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %68, i32 0, i32 1
  %70 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %69, align 8
  store %struct.nvkm_vmm_desc* %70, %struct.nvkm_vmm_desc** %21, align 8
  br label %71

71:                                               ; preds = %82, %67
  %72 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %73 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %78 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %24, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %24, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %84 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %83, i32 1
  store %struct.nvkm_vmm_desc* %84, %struct.nvkm_vmm_desc** %21, align 8
  %85 = load i32, i32* %23, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %23, align 4
  br label %71

87:                                               ; preds = %71
  %88 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %20, align 8
  %89 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %24, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %24, align 4
  %95 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %96 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %95, i32 -1
  store %struct.nvkm_vmm_desc* %96, %struct.nvkm_vmm_desc** %21, align 8
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* @NVKM_VMM_LEVELS_MAX, align 4
  %99 = icmp sgt i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i64 @WARN_ON(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %316

106:                                              ; preds = %87
  %107 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %108 = call %struct.TYPE_4__* @nvkm_vmm_pt_new(%struct.nvkm_vmm_desc* %107, i32 0, i32* null)
  %109 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %110 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %109, i32 0, i32 6
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %112 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %111, i32 0, i32 6
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = icmp ne %struct.TYPE_4__* %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %106
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %316

118:                                              ; preds = %106
  %119 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %120 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %119, i32 0, i32 6
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %126 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %125, i32 0, i32 7
  %127 = call i32 @INIT_LIST_HEAD(i32* %126)
  %128 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %129 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %168

132:                                              ; preds = %118
  %133 = load i64, i64* %13, align 8
  %134 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %135 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %138 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 1, %139
  %141 = mul nsw i32 %136, %140
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %133, %142
  store i64 %143, i64* %26, align 8
  %144 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %12, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %21, align 8
  %147 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @nvkm_mmu_ptc_get(%struct.nvkm_mmu* %144, i64 %145, i32 %148, i32 1)
  %150 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %151 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %150, i32 0, i32 6
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %149, i32* %155, align 4
  %156 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %157 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %156, i32 0, i32 6
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %132
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %10, align 4
  br label %316

167:                                              ; preds = %132
  br label %168

168:                                              ; preds = %167, %118
  %169 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %170 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %169, i32 0, i32 3
  %171 = call i32 @INIT_LIST_HEAD(i32* %170)
  %172 = load i8*, i8** @RB_ROOT, align 8
  %173 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %174 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %173, i32 0, i32 5
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @RB_ROOT, align 8
  %176 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %177 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %176, i32 0, i32 4
  store i8* %175, i8** %177, align 8
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %254

180:                                              ; preds = %168
  %181 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %182 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load i32, i32* %24, align 4
  %184 = zext i32 %183 to i64
  %185 = shl i64 1, %184
  %186 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %187 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  %188 = load i64, i64* %15, align 8
  %189 = load i64, i64* %16, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i64, i64* %15, align 8
  %192 = icmp slt i64 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %180
  %194 = load i64, i64* %15, align 8
  %195 = load i64, i64* %16, align 8
  %196 = add nsw i64 %194, %195
  %197 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %198 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ugt i64 %196, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %193, %180
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %10, align 4
  br label %316

204:                                              ; preds = %193
  %205 = load i64, i64* %15, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %209 = load i64, i64* %15, align 8
  %210 = call i32 @nvkm_vmm_ctor_managed(%struct.nvkm_vmm* %208, i64 0, i64 %209)
  store i32 %210, i32* %25, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i32, i32* %25, align 4
  store i32 %213, i32* %10, align 4
  br label %316

214:                                              ; preds = %207, %204
  %215 = load i64, i64* %16, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %214
  %218 = load i64, i64* %15, align 8
  %219 = load i64, i64* %16, align 8
  %220 = call %struct.nvkm_vma* @nvkm_vma_new(i64 %218, i64 %219)
  store %struct.nvkm_vma* %220, %struct.nvkm_vma** %22, align 8
  %221 = icmp ne %struct.nvkm_vma* %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %10, align 4
  br label %316

225:                                              ; preds = %217
  %226 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %227 = load %struct.nvkm_vma*, %struct.nvkm_vma** %22, align 8
  %228 = call i32 @nvkm_vmm_free_insert(%struct.nvkm_vmm* %226, %struct.nvkm_vma* %227)
  %229 = load %struct.nvkm_vma*, %struct.nvkm_vma** %22, align 8
  %230 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %229, i32 0, i32 0
  %231 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %232 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %231, i32 0, i32 3
  %233 = call i32 @list_add_tail(i32* %230, i32* %232)
  br label %234

234:                                              ; preds = %225, %214
  %235 = load i64, i64* %15, align 8
  %236 = load i64, i64* %16, align 8
  %237 = add nsw i64 %235, %236
  store i64 %237, i64* %15, align 8
  %238 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %239 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %15, align 8
  %242 = sub i64 %240, %241
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %16, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %234
  %246 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %247 = load i64, i64* %15, align 8
  %248 = load i64, i64* %16, align 8
  %249 = call i32 @nvkm_vmm_ctor_managed(%struct.nvkm_vmm* %246, i64 %247, i64 %248)
  store i32 %249, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i32, i32* %25, align 4
  store i32 %252, i32* %10, align 4
  br label %316

253:                                              ; preds = %245, %234
  br label %315

254:                                              ; preds = %168
  %255 = load i64, i64* %15, align 8
  %256 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %257 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load i64, i64* %16, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %254
  %261 = load i64, i64* %15, align 8
  %262 = load i64, i64* %16, align 8
  %263 = add nsw i64 %261, %262
  br label %268

264:                                              ; preds = %254
  %265 = load i32, i32* %24, align 4
  %266 = zext i32 %265 to i64
  %267 = shl i64 1, %266
  br label %268

268:                                              ; preds = %264, %260
  %269 = phi i64 [ %263, %260 ], [ %267, %264 ]
  %270 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %271 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %270, i32 0, i32 2
  store i64 %269, i64* %271, align 8
  %272 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %273 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %276 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ugt i64 %274, %277
  br i1 %278, label %287, label %279

279:                                              ; preds = %268
  %280 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %281 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i32, i32* %24, align 4
  %284 = zext i32 %283 to i64
  %285 = shl i64 1, %284
  %286 = icmp ugt i64 %282, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %279, %268
  %288 = load i32, i32* @EINVAL, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %10, align 4
  br label %316

290:                                              ; preds = %279
  %291 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %292 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %295 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %298 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = sub i64 %296, %299
  %301 = call %struct.nvkm_vma* @nvkm_vma_new(i64 %293, i64 %300)
  store %struct.nvkm_vma* %301, %struct.nvkm_vma** %22, align 8
  %302 = icmp ne %struct.nvkm_vma* %301, null
  br i1 %302, label %306, label %303

303:                                              ; preds = %290
  %304 = load i32, i32* @ENOMEM, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %10, align 4
  br label %316

306:                                              ; preds = %290
  %307 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %308 = load %struct.nvkm_vma*, %struct.nvkm_vma** %22, align 8
  %309 = call i32 @nvkm_vmm_free_insert(%struct.nvkm_vmm* %307, %struct.nvkm_vma* %308)
  %310 = load %struct.nvkm_vma*, %struct.nvkm_vma** %22, align 8
  %311 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %310, i32 0, i32 0
  %312 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %19, align 8
  %313 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %312, i32 0, i32 3
  %314 = call i32 @list_add(i32* %311, i32* %313)
  br label %315

315:                                              ; preds = %306, %253
  store i32 0, i32* %10, align 4
  br label %316

316:                                              ; preds = %315, %303, %287, %251, %222, %212, %201, %164, %115, %103
  %317 = load i32, i32* %10, align 4
  ret i32 %317
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @__mutex_init(i32*, i8*, %struct.lock_class_key*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_4__* @nvkm_vmm_pt_new(%struct.nvkm_vmm_desc*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nvkm_mmu_ptc_get(%struct.nvkm_mmu*, i64, i32, i32) #1

declare dso_local i32 @nvkm_vmm_ctor_managed(%struct.nvkm_vmm*, i64, i64) #1

declare dso_local %struct.nvkm_vma* @nvkm_vma_new(i64, i64) #1

declare dso_local i32 @nvkm_vmm_free_insert(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
