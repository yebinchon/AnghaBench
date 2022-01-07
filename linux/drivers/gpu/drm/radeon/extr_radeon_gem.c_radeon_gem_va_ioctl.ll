; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_va_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_gem.c_radeon_gem_va_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.radeon_device* }
%struct.TYPE_5__ = type { i32 }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { %struct.radeon_fpriv* }
%struct.radeon_fpriv = type { i32 }
%struct.drm_radeon_gem_va = type { i32, i64, i32, i32, i64 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }
%struct.radeon_bo_va = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RADEON_VA_RESULT_ERROR = common dso_local global i8* null, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RADEON_VA_RESERVED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"offset 0x%lX is in reserved area 0x%X\0A\00", align 1
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid flags 0x%08X vs 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"unsupported operation %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_VA_RESULT_VA_EXIST = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_VA_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_gem_va_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_radeon_gem_va*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.radeon_device*, align 8
  %11 = alloca %struct.radeon_fpriv*, align 8
  %12 = alloca %struct.radeon_bo*, align 8
  %13 = alloca %struct.radeon_bo_va*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_radeon_gem_va*
  store %struct.drm_radeon_gem_va* %17, %struct.drm_radeon_gem_va** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %19, align 8
  store %struct.radeon_device* %20, %struct.radeon_device** %10, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %22, align 8
  store %struct.radeon_fpriv* %23, %struct.radeon_fpriv** %11, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %33 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %229

36:                                               ; preds = %3
  %37 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %38 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %45 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %229

48:                                               ; preds = %36
  %49 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %50 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RADEON_VA_RESERVED_SIZE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %48
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %60 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i64, i64* @RADEON_VA_RESERVED_SIZE, align 8
  %64 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %63)
  %65 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %68 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %229

71:                                               ; preds = %48
  %72 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %73 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %74 = or i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %76 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %71
  %82 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %87 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %94 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %229

97:                                               ; preds = %71
  %98 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %99 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %102 [
    i32 129, label %101
    i32 128, label %101
  ]

101:                                              ; preds = %97, %97
  br label %117

102:                                              ; preds = %97
  %103 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %108 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %114 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %229

117:                                              ; preds = %101
  %118 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %119 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %120 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %118, i32 %121)
  store %struct.drm_gem_object* %122, %struct.drm_gem_object** %9, align 8
  %123 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %124 = icmp eq %struct.drm_gem_object* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %117
  %126 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %129 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @ENOENT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %229

132:                                              ; preds = %117
  %133 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %134 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %133)
  store %struct.radeon_bo* %134, %struct.radeon_bo** %12, align 8
  %135 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %136 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %135, i32 0)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %143 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %145 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %144)
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %4, align 4
  br label %229

147:                                              ; preds = %132
  %148 = load %struct.radeon_fpriv*, %struct.radeon_fpriv** %11, align 8
  %149 = getelementptr inbounds %struct.radeon_fpriv, %struct.radeon_fpriv* %148, i32 0, i32 0
  %150 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %151 = call %struct.radeon_bo_va* @radeon_vm_bo_find(i32* %149, %struct.radeon_bo* %150)
  store %struct.radeon_bo_va* %151, %struct.radeon_bo_va** %13, align 8
  %152 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %153 = icmp ne %struct.radeon_bo_va* %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %147
  %155 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %158 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %160 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %159)
  %161 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %162 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %161)
  %163 = load i32, i32* @ENOENT, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %229

165:                                              ; preds = %147
  %166 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %167 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  switch i32 %168, label %205 [
    i32 129, label %169
    i32 128, label %201
  ]

169:                                              ; preds = %165
  %170 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %171 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %169
  %176 = load i32, i32* @RADEON_VA_RESULT_VA_EXIST, align 4
  %177 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %178 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %180 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %187 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %186, i32 0, i32 1
  store i64 %185, i64* %187, align 8
  %188 = load %struct.radeon_bo*, %struct.radeon_bo** %12, align 8
  %189 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %188)
  br label %225

190:                                              ; preds = %169
  %191 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %192 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %193 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %194 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %198 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %191, %struct.radeon_bo_va* %192, i32 %196, i32 %199)
  store i32 %200, i32* %15, align 4
  br label %206

201:                                              ; preds = %165
  %202 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %203 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %204 = call i32 @radeon_vm_bo_set_addr(%struct.radeon_device* %202, %struct.radeon_bo_va* %203, i32 0, i32 0)
  store i32 %204, i32* %15, align 4
  br label %206

205:                                              ; preds = %165
  br label %206

206:                                              ; preds = %205, %201, %190
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = load %struct.radeon_device*, %struct.radeon_device** %10, align 8
  %211 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %13, align 8
  %212 = call i32 @radeon_gem_va_update_vm(%struct.radeon_device* %210, %struct.radeon_bo_va* %211)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* @RADEON_VA_RESULT_OK, align 4
  %215 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %216 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %15, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = load i8*, i8** @RADEON_VA_RESULT_ERROR, align 8
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.drm_radeon_gem_va*, %struct.drm_radeon_gem_va** %8, align 8
  %223 = getelementptr inbounds %struct.drm_radeon_gem_va, %struct.drm_radeon_gem_va* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %219, %213
  br label %225

225:                                              ; preds = %224, %175
  %226 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %227 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %226)
  %228 = load i32, i32* %15, align 4
  store i32 %228, i32* %4, align 4
  br label %229

229:                                              ; preds = %225, %154, %139, %125, %102, %81, %54, %41, %29
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local %struct.radeon_bo_va* @radeon_vm_bo_find(i32*, %struct.radeon_bo*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_vm_bo_set_addr(%struct.radeon_device*, %struct.radeon_bo_va*, i32, i32) #1

declare dso_local i32 @radeon_gem_va_update_vm(%struct.radeon_device*, %struct.radeon_bo_va*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
