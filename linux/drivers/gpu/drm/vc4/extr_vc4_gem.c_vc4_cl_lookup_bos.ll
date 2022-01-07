; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_cl_lookup_bos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_cl_lookup_bos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32, i32 }
%struct.vc4_exec_info = type { i32, %struct.drm_gem_cma_object**, %struct.drm_vc4_submit_cl* }
%struct.drm_gem_cma_object = type { i32 }
%struct.drm_vc4_submit_cl = type { i32, i32 }
%struct.drm_gem_object = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Rendering requires BOs to validate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to allocate validated BO pointers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to allocate incoming GEM handles\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to copy in GEM handles\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to look up GEM BO %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.vc4_exec_info*)* @vc4_cl_lookup_bos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_cl_lookup_bos(%struct.drm_device* %0, %struct.drm_file* %1, %struct.vc4_exec_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.vc4_exec_info*, align 8
  %8 = alloca %struct.drm_vc4_submit_cl*, align 8
  %9 = alloca %struct.drm_gem_cma_object**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.vc4_exec_info* %2, %struct.vc4_exec_info** %7, align 8
  %13 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %14 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %13, i32 0, i32 2
  %15 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %14, align 8
  store %struct.drm_vc4_submit_cl* %15, %struct.drm_vc4_submit_cl** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %17 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %20 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %22 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %222

29:                                               ; preds = %3
  %30 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %31 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load i32, i32* @__GFP_ZERO, align 4
  %35 = or i32 %33, %34
  %36 = call i8* @kvmalloc_array(i32 %32, i32 8, i32 %35)
  %37 = bitcast i8* %36 to %struct.drm_gem_cma_object**
  %38 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %39 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %38, i32 0, i32 1
  store %struct.drm_gem_cma_object** %37, %struct.drm_gem_cma_object*** %39, align 8
  %40 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %41 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %40, i32 0, i32 1
  %42 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %41, align 8
  %43 = icmp ne %struct.drm_gem_cma_object** %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %29
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %222

48:                                               ; preds = %29
  %49 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %50 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kvmalloc_array(i32 %51, i32 8, i32 %52)
  %54 = bitcast i8* %53 to %struct.drm_gem_cma_object**
  store %struct.drm_gem_cma_object** %54, %struct.drm_gem_cma_object*** %9, align 8
  %55 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %56 = icmp ne %struct.drm_gem_cma_object** %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  %60 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %212

61:                                               ; preds = %48
  %62 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %63 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %8, align 8
  %64 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @u64_to_user_ptr(i32 %65)
  %67 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %68 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @copy_from_user(%struct.drm_gem_cma_object** %62, i32 %66, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* @EFAULT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %212

79:                                               ; preds = %61
  %80 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %81 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %80, i32 0, i32 0
  %82 = call i32 @spin_lock(i32* %81)
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %121, %79
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %86 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %83
  %90 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %91 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %90, i32 0, i32 1
  %92 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %92, i64 %94
  %96 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %95, align 8
  %97 = call %struct.drm_gem_object* @idr_find(i32* %91, %struct.drm_gem_cma_object* %96)
  store %struct.drm_gem_object* %97, %struct.drm_gem_object** %12, align 8
  %98 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %99 = icmp ne %struct.drm_gem_object* %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %102, i64 %104
  %106 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %105, align 8
  %107 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %101, %struct.drm_gem_cma_object* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %10, align 4
  br label %124

110:                                              ; preds = %89
  %111 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %112 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %111)
  %113 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %114 = bitcast %struct.drm_gem_object* %113 to %struct.drm_gem_cma_object*
  %115 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %116 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %115, i32 0, i32 1
  %117 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %117, i64 %119
  store %struct.drm_gem_cma_object* %114, %struct.drm_gem_cma_object** %120, align 8
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %83

124:                                              ; preds = %100, %83
  %125 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %126 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %180

131:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %153, %131
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %135 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %140 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %139, i32 0, i32 1
  %141 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %141, i64 %143
  %145 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %144, align 8
  %146 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %145, i32 0, i32 0
  %147 = call i32 @to_vc4_bo(i32* %146)
  %148 = call i32 @vc4_bo_inc_usecnt(i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %138
  br label %159

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %132

156:                                              ; preds = %132
  %157 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %158 = call i32 @kvfree(%struct.drm_gem_cma_object** %157)
  store i32 0, i32* %4, align 4
  br label %222

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %11, align 4
  br label %162

162:                                              ; preds = %176, %159
  %163 = load i32, i32* %11, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %162
  %166 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %167 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %166, i32 0, i32 1
  %168 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %168, i64 %170
  %172 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %171, align 8
  %173 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %172, i32 0, i32 0
  %174 = call i32 @to_vc4_bo(i32* %173)
  %175 = call i32 @vc4_bo_dec_usecnt(i32 %174)
  br label %176

176:                                              ; preds = %165
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %11, align 4
  br label %162

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %130
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %208, %180
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %184 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %189 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %188, i32 0, i32 1
  %190 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %190, i64 %192
  %194 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %193, align 8
  %195 = icmp ne %struct.drm_gem_cma_object* %194, null
  br label %196

196:                                              ; preds = %187, %181
  %197 = phi i1 [ false, %181 ], [ %195, %187 ]
  br i1 %197, label %198, label %211

198:                                              ; preds = %196
  %199 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %200 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %199, i32 0, i32 1
  %201 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %201, i64 %203
  %205 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %204, align 8
  %206 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %205, i32 0, i32 0
  %207 = call i32 @drm_gem_object_put_unlocked(i32* %206)
  br label %208

208:                                              ; preds = %198
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %181

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %75, %57
  %213 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %9, align 8
  %214 = call i32 @kvfree(%struct.drm_gem_cma_object** %213)
  %215 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %216 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %215, i32 0, i32 1
  %217 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %216, align 8
  %218 = call i32 @kvfree(%struct.drm_gem_cma_object** %217)
  %219 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %220 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %219, i32 0, i32 1
  store %struct.drm_gem_cma_object** null, %struct.drm_gem_cma_object*** %220, align 8
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %212, %156, %44, %25
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i8* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @copy_from_user(%struct.drm_gem_cma_object**, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, %struct.drm_gem_cma_object*) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vc4_bo_inc_usecnt(i32) #1

declare dso_local i32 @to_vc4_bo(i32*) #1

declare dso_local i32 @kvfree(%struct.drm_gem_cma_object**) #1

declare dso_local i32 @vc4_bo_dec_usecnt(i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
