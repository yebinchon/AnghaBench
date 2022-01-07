; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_bo_list.c_amdgpu_bo_list_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_amdgpu_bo_list_entry = type { i32, i32 }
%struct.amdgpu_bo_list = type { i32, i32, %struct.amdgpu_bo*, %struct.amdgpu_bo*, %struct.amdgpu_bo*, i32 }
%struct.amdgpu_bo = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_bo_list_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.drm_gem_object = type { i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@AMDGPU_BO_LIST_MAX_PRIORITY = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GDS = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_GWS = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_OA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_list_create(%struct.amdgpu_device* %0, %struct.drm_file* %1, %struct.drm_amdgpu_bo_list_entry* %2, i32 %3, %struct.amdgpu_bo_list** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_amdgpu_bo_list_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_bo_list**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_bo_list_entry*, align 8
  %15 = alloca %struct.amdgpu_bo_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.amdgpu_bo_list_entry*, align 8
  %21 = alloca %struct.drm_gem_object*, align 8
  %22 = alloca %struct.amdgpu_bo*, align 8
  %23 = alloca %struct.mm_struct*, align 8
  %24 = alloca %struct.amdgpu_bo*, align 8
  %25 = alloca %struct.amdgpu_bo*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store %struct.drm_amdgpu_bo_list_entry* %2, %struct.drm_amdgpu_bo_list_entry** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.amdgpu_bo_list** %4, %struct.amdgpu_bo_list*** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @SIZE_MAX, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 40
  %32 = udiv i64 %31, 16
  %33 = icmp ugt i64 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %235

37:                                               ; preds = %5
  store i64 40, i64* %17, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 16
  %41 = load i64, i64* %17, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.amdgpu_bo_list* @kvmalloc(i64 %43, i32 %44)
  store %struct.amdgpu_bo_list* %45, %struct.amdgpu_bo_list** %15, align 8
  %46 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %47 = icmp ne %struct.amdgpu_bo_list* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %235

51:                                               ; preds = %37
  %52 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %53 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %52, i32 0, i32 5
  %54 = call i32 @kref_init(i32* %53)
  %55 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %56 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %55, i32 0, i32 4
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %56, align 8
  %57 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %58 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %57, i32 0, i32 3
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %58, align 8
  %59 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %60 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %59, i32 0, i32 2
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %60, align 8
  %61 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %62 = call %struct.amdgpu_bo_list_entry* @amdgpu_bo_list_array_entry(%struct.amdgpu_bo_list* %61, i32 0)
  store %struct.amdgpu_bo_list_entry* %62, %struct.amdgpu_bo_list_entry** %14, align 8
  %63 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %14, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = trunc i64 %66 to i32
  %68 = call i32 @memset(%struct.amdgpu_bo_list_entry* %63, i32 0, i32 %67)
  store i32 0, i32* %18, align 4
  br label %69

69:                                               ; preds = %177, %51
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %180

73:                                               ; preds = %69
  %74 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %75 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %9, align 8
  %76 = load i32, i32* %18, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.drm_amdgpu_bo_list_entry, %struct.drm_amdgpu_bo_list_entry* %75, i64 %77
  %79 = getelementptr inbounds %struct.drm_amdgpu_bo_list_entry, %struct.drm_amdgpu_bo_list_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %74, i32 %80)
  store %struct.drm_gem_object* %81, %struct.drm_gem_object** %21, align 8
  %82 = load %struct.drm_gem_object*, %struct.drm_gem_object** %21, align 8
  %83 = icmp ne %struct.drm_gem_object* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %19, align 4
  br label %194

87:                                               ; preds = %73
  %88 = load %struct.drm_gem_object*, %struct.drm_gem_object** %21, align 8
  %89 = call i32 @gem_to_amdgpu_bo(%struct.drm_gem_object* %88)
  %90 = call %struct.amdgpu_bo* @amdgpu_bo_ref(i32 %89)
  store %struct.amdgpu_bo* %90, %struct.amdgpu_bo** %22, align 8
  %91 = load %struct.drm_gem_object*, %struct.drm_gem_object** %21, align 8
  %92 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %91)
  %93 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %94 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call %struct.mm_struct* @amdgpu_ttm_tt_get_usermm(i32 %96)
  store %struct.mm_struct* %97, %struct.mm_struct** %23, align 8
  %98 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  %99 = icmp ne %struct.mm_struct* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %87
  %101 = load %struct.mm_struct*, %struct.mm_struct** %23, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.mm_struct*, %struct.mm_struct** %103, align 8
  %105 = icmp ne %struct.mm_struct* %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %22)
  %108 = load i32, i32* @EPERM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %19, align 4
  br label %194

110:                                              ; preds = %100
  %111 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %14, align 8
  %112 = load i32, i32* %13, align 4
  %113 = add i32 %112, -1
  store i32 %113, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %111, i64 %114
  store %struct.amdgpu_bo_list_entry* %115, %struct.amdgpu_bo_list_entry** %20, align 8
  br label %122

116:                                              ; preds = %87
  %117 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %14, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %12, align 4
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %117, i64 %120
  store %struct.amdgpu_bo_list_entry* %121, %struct.amdgpu_bo_list_entry** %20, align 8
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.drm_amdgpu_bo_list_entry*, %struct.drm_amdgpu_bo_list_entry** %9, align 8
  %124 = load i32, i32* %18, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.drm_amdgpu_bo_list_entry, %struct.drm_amdgpu_bo_list_entry* %123, i64 %125
  %127 = getelementptr inbounds %struct.drm_amdgpu_bo_list_entry, %struct.drm_amdgpu_bo_list_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @AMDGPU_BO_LIST_MAX_PRIORITY, align 4
  %130 = call i32 @min(i32 %128, i32 %129)
  %131 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %20, align 8
  %132 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %134 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %133, i32 0, i32 1
  %135 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %20, align 8
  %136 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store %struct.TYPE_5__* %134, %struct.TYPE_5__** %137, align 8
  %138 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %139 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AMDGPU_GEM_DOMAIN_GDS, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %122
  %144 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %145 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %146 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %145, i32 0, i32 4
  store %struct.amdgpu_bo* %144, %struct.amdgpu_bo** %146, align 8
  br label %147

147:                                              ; preds = %143, %122
  %148 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %149 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AMDGPU_GEM_DOMAIN_GWS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %155 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %156 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %155, i32 0, i32 3
  store %struct.amdgpu_bo* %154, %struct.amdgpu_bo** %156, align 8
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %159 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AMDGPU_GEM_DOMAIN_OA, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %165 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %166 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %165, i32 0, i32 2
  store %struct.amdgpu_bo* %164, %struct.amdgpu_bo** %166, align 8
  br label %167

167:                                              ; preds = %163, %157
  %168 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %169 = call i64 @amdgpu_bo_size(%struct.amdgpu_bo* %168)
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %16, align 4
  %174 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %175 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %176 = call i32 @trace_amdgpu_bo_list_set(%struct.amdgpu_bo_list* %174, %struct.amdgpu_bo* %175)
  br label %177

177:                                              ; preds = %167
  %178 = load i32, i32* %18, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %69

180:                                              ; preds = %69
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %183 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %186 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %188 = getelementptr inbounds %struct.amdgpu_bo_list, %struct.amdgpu_bo_list* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @trace_amdgpu_cs_bo_status(i32 %189, i32 %190)
  %192 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %193 = load %struct.amdgpu_bo_list**, %struct.amdgpu_bo_list*** %11, align 8
  store %struct.amdgpu_bo_list* %192, %struct.amdgpu_bo_list** %193, align 8
  store i32 0, i32* %6, align 4
  br label %235

194:                                              ; preds = %106, %84
  store i32 0, i32* %18, align 4
  br label %195

195:                                              ; preds = %209, %194
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %195
  %200 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %14, align 8
  %201 = load i32, i32* %18, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %200, i64 %202
  %204 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.TYPE_5__* %206)
  store %struct.amdgpu_bo* %207, %struct.amdgpu_bo** %24, align 8
  %208 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %24)
  br label %209

209:                                              ; preds = %199
  %210 = load i32, i32* %18, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %18, align 4
  br label %195

212:                                              ; preds = %195
  %213 = load i32, i32* %13, align 4
  store i32 %213, i32* %18, align 4
  br label %214

214:                                              ; preds = %228, %212
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load %struct.amdgpu_bo_list_entry*, %struct.amdgpu_bo_list_entry** %14, align 8
  %220 = load i32, i32* %18, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %219, i64 %221
  %223 = getelementptr inbounds %struct.amdgpu_bo_list_entry, %struct.amdgpu_bo_list_entry* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.TYPE_5__* %225)
  store %struct.amdgpu_bo* %226, %struct.amdgpu_bo** %25, align 8
  %227 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %25)
  br label %228

228:                                              ; preds = %218
  %229 = load i32, i32* %18, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %214

231:                                              ; preds = %214
  %232 = load %struct.amdgpu_bo_list*, %struct.amdgpu_bo_list** %15, align 8
  %233 = call i32 @kvfree(%struct.amdgpu_bo_list* %232)
  %234 = load i32, i32* %19, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %231, %180, %48, %34
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.amdgpu_bo_list* @kvmalloc(i64, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.amdgpu_bo_list_entry* @amdgpu_bo_list_array_entry(%struct.amdgpu_bo_list*, i32) #1

declare dso_local i32 @memset(%struct.amdgpu_bo_list_entry*, i32, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.amdgpu_bo* @amdgpu_bo_ref(i32) #1

declare dso_local i32 @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.mm_struct* @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_bo_list_set(%struct.amdgpu_bo_list*, %struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_cs_bo_status(i32, i32) #1

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.TYPE_5__*) #1

declare dso_local i32 @kvfree(%struct.amdgpu_bo_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
