; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_va_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_va_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.amdgpu_device* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32, %struct.amdgpu_bo_va* }
%struct.amdgpu_bo_va = type { i32 }
%struct.drm_amdgpu_gem_va = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32, i32 }
%struct.amdgpu_bo_list_entry = type { i32 }
%struct.ttm_validate_buffer = type { i32, i32, i32* }
%struct.ww_acquire_ctx = type { i32 }
%struct.list_head = type { i32 }

@AMDGPU_VM_DELAY_UPDATE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_READABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_WRITEABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_EXECUTABLE = common dso_local global i32 0, align 4
@AMDGPU_VM_MTYPE_MASK = common dso_local global i32 0, align 4
@AMDGPU_VM_PAGE_PRT = common dso_local global i32 0, align 4
@AMDGPU_VA_RESERVED_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"va_address 0x%LX is in reserved area 0x%LX\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GMC_HOLE_START = common dso_local global i32 0, align 4
@AMDGPU_GMC_HOLE_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"va_address 0x%LX is in VA hole 0x%LX-0x%LX\0A\00", align 1
@AMDGPU_GMC_HOLE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid flags combination 0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported operation %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VM_ALWAYS_VALID = common dso_local global i32 0, align 4
@amdgpu_vm_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_va_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_amdgpu_gem_va*, align 8
  %11 = alloca %struct.drm_gem_object*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_fpriv*, align 8
  %14 = alloca %struct.amdgpu_bo*, align 8
  %15 = alloca %struct.amdgpu_bo_va*, align 8
  %16 = alloca %struct.amdgpu_bo_list_entry, align 4
  %17 = alloca %struct.ttm_validate_buffer, align 8
  %18 = alloca %struct.ww_acquire_ctx, align 4
  %19 = alloca %struct.list_head, align 4
  %20 = alloca %struct.list_head, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %23 = load i32, i32* @AMDGPU_VM_DELAY_UPDATE, align 4
  %24 = load i32, i32* @AMDGPU_VM_PAGE_READABLE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AMDGPU_VM_PAGE_WRITEABLE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @AMDGPU_VM_PAGE_EXECUTABLE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AMDGPU_VM_MTYPE_MASK, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @AMDGPU_VM_DELAY_UPDATE, align 4
  %33 = load i32, i32* @AMDGPU_VM_PAGE_PRT, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = bitcast i8* %35 to %struct.drm_amdgpu_gem_va*
  store %struct.drm_amdgpu_gem_va* %36, %struct.drm_amdgpu_gem_va** %10, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 1
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %38, align 8
  store %struct.amdgpu_device* %39, %struct.amdgpu_device** %12, align 8
  %40 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %41 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %40, i32 0, i32 0
  %42 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %41, align 8
  store %struct.amdgpu_fpriv* %42, %struct.amdgpu_fpriv** %13, align 8
  store i32 0, i32* %22, align 4
  %43 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %44 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AMDGPU_VA_RESERVED_SIZE, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %3
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %54 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AMDGPU_VA_RESERVED_SIZE, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %301

60:                                               ; preds = %3
  %61 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %62 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AMDGPU_GMC_HOLE_START, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %60
  %67 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %68 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AMDGPU_GMC_HOLE_END, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %78 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AMDGPU_GMC_HOLE_START, align 4
  %81 = load i32, i32* @AMDGPU_GMC_HOLE_END, align 4
  %82 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %301

85:                                               ; preds = %66, %60
  %86 = load i32, i32* @AMDGPU_GMC_HOLE_MASK, align 4
  %87 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %88 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %92 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %85
  %99 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %100 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %112 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %301

117:                                              ; preds = %98, %85
  %118 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %119 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %122 [
    i32 130, label %121
    i32 128, label %121
    i32 131, label %121
    i32 129, label %121
  ]

121:                                              ; preds = %117, %117, %117, %117
  br label %133

122:                                              ; preds = %117
  %123 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %124 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %128 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %301

133:                                              ; preds = %121
  %134 = call i32 @INIT_LIST_HEAD(%struct.list_head* %19)
  %135 = call i32 @INIT_LIST_HEAD(%struct.list_head* %20)
  %136 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %137 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 131
  br i1 %139, label %140, label %177

140:                                              ; preds = %133
  %141 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %142 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @AMDGPU_VM_PAGE_PRT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %177, label %147

147:                                              ; preds = %140
  %148 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %149 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %150 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %148, i32 %151)
  store %struct.drm_gem_object* %152, %struct.drm_gem_object** %11, align 8
  %153 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %154 = icmp eq %struct.drm_gem_object* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @ENOENT, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %301

158:                                              ; preds = %147
  %159 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %160 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %159)
  store %struct.amdgpu_bo* %160, %struct.amdgpu_bo** %14, align 8
  %161 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %162 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 2
  store i32* %162, i32** %163, align 8
  %164 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %165 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AMDGPU_GEM_CREATE_VM_ALWAYS_VALID, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %158
  %171 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %174

172:                                              ; preds = %158
  %173 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = getelementptr inbounds %struct.ttm_validate_buffer, %struct.ttm_validate_buffer* %17, i32 0, i32 1
  %176 = call i32 @list_add(i32* %175, %struct.list_head* %19)
  br label %178

177:                                              ; preds = %140, %133
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %11, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %14, align 8
  br label %178

178:                                              ; preds = %177, %174
  %179 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %180 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %179, i32 0, i32 0
  %181 = call i32 @amdgpu_vm_get_pd_bo(i32* %180, %struct.list_head* %19, %struct.amdgpu_bo_list_entry* %16)
  %182 = call i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx* %18, %struct.list_head* %19, i32 1, %struct.list_head* %20, i32 0)
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %22, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %297

186:                                              ; preds = %178
  %187 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %188 = icmp ne %struct.amdgpu_bo* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %191 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %190, i32 0, i32 0
  %192 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %14, align 8
  %193 = call %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(i32* %191, %struct.amdgpu_bo* %192)
  store %struct.amdgpu_bo_va* %193, %struct.amdgpu_bo_va** %15, align 8
  %194 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %15, align 8
  %195 = icmp ne %struct.amdgpu_bo_va* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %189
  %197 = load i32, i32* @ENOENT, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %22, align 4
  br label %295

199:                                              ; preds = %189
  br label %211

200:                                              ; preds = %186
  %201 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %202 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 131
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %207 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %206, i32 0, i32 1
  %208 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %207, align 8
  store %struct.amdgpu_bo_va* %208, %struct.amdgpu_bo_va** %15, align 8
  br label %210

209:                                              ; preds = %200
  store %struct.amdgpu_bo_va* null, %struct.amdgpu_bo_va** %15, align 8
  br label %210

210:                                              ; preds = %209, %205
  br label %211

211:                                              ; preds = %210, %199
  %212 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %213 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  switch i32 %214, label %271 [
    i32 130, label %215
    i32 128, label %234
    i32 131, label %241
    i32 129, label %252
  ]

215:                                              ; preds = %211
  %216 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %217 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %218 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @amdgpu_gmc_get_pte_flags(%struct.amdgpu_device* %216, i32 %219)
  store i32 %220, i32* %21, align 4
  %221 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %222 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %15, align 8
  %223 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %224 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %227 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %230 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %21, align 4
  %233 = call i32 @amdgpu_vm_bo_map(%struct.amdgpu_device* %221, %struct.amdgpu_bo_va* %222, i32 %225, i32 %228, i32 %231, i32 %232)
  store i32 %233, i32* %22, align 4
  br label %272

234:                                              ; preds = %211
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %236 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %15, align 8
  %237 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %238 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @amdgpu_vm_bo_unmap(%struct.amdgpu_device* %235, %struct.amdgpu_bo_va* %236, i32 %239)
  store i32 %240, i32* %22, align 4
  br label %272

241:                                              ; preds = %211
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %243 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %244 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %243, i32 0, i32 0
  %245 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %246 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %249 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @amdgpu_vm_bo_clear_mappings(%struct.amdgpu_device* %242, i32* %244, i32 %247, i32 %250)
  store i32 %251, i32* %22, align 4
  br label %272

252:                                              ; preds = %211
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %254 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %255 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @amdgpu_gmc_get_pte_flags(%struct.amdgpu_device* %253, i32 %256)
  store i32 %257, i32* %21, align 4
  %258 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %259 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %15, align 8
  %260 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %261 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %264 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %267 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %21, align 4
  %270 = call i32 @amdgpu_vm_bo_replace_map(%struct.amdgpu_device* %258, %struct.amdgpu_bo_va* %259, i32 %262, i32 %265, i32 %268, i32 %269)
  store i32 %270, i32* %22, align 4
  br label %272

271:                                              ; preds = %211
  br label %272

272:                                              ; preds = %271, %252, %241, %234, %215
  %273 = load i32, i32* %22, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %294, label %275

275:                                              ; preds = %272
  %276 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %277 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @AMDGPU_VM_DELAY_UPDATE, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %294, label %282

282:                                              ; preds = %275
  %283 = load i32, i32* @amdgpu_vm_debug, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %294, label %285

285:                                              ; preds = %282
  %286 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %287 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %288 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %287, i32 0, i32 0
  %289 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %15, align 8
  %290 = load %struct.drm_amdgpu_gem_va*, %struct.drm_amdgpu_gem_va** %10, align 8
  %291 = getelementptr inbounds %struct.drm_amdgpu_gem_va, %struct.drm_amdgpu_gem_va* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @amdgpu_gem_va_update_vm(%struct.amdgpu_device* %286, i32* %288, %struct.amdgpu_bo_va* %289, i32 %292)
  br label %294

294:                                              ; preds = %285, %282, %275, %272
  br label %295

295:                                              ; preds = %294, %196
  %296 = call i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx* %18, %struct.list_head* %19)
  br label %297

297:                                              ; preds = %295, %185
  %298 = load %struct.drm_gem_object*, %struct.drm_gem_object** %11, align 8
  %299 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %298)
  %300 = load i32, i32* %22, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %297, %155, %122, %106, %72, %48
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @amdgpu_vm_get_pd_bo(i32*, %struct.list_head*, %struct.amdgpu_bo_list_entry*) #1

declare dso_local i32 @ttm_eu_reserve_buffers(%struct.ww_acquire_ctx*, %struct.list_head*, i32, %struct.list_head*, i32) #1

declare dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_find(i32*, %struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_gmc_get_pte_flags(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_vm_bo_map(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_unmap(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32) #1

declare dso_local i32 @amdgpu_vm_bo_clear_mappings(%struct.amdgpu_device*, i32*, i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_replace_map(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_gem_va_update_vm(%struct.amdgpu_device*, i32*, %struct.amdgpu_bo_va*, i32) #1

declare dso_local i32 @ttm_eu_backoff_reservation(%struct.ww_acquire_ctx*, %struct.list_head*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
