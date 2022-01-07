; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_drv.c_lima_ioctl_gem_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.lima_drm_priv* }
%struct.lima_drm_priv = type { i32 }
%struct.drm_lima_gem_submit = type { i32, i32, i64, i32, i32*, i32, i32, i32, i32 }
%struct.lima_device = type { %struct.lima_sched_pipe* }
%struct.lima_sched_pipe = type { i64, i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)*, i32 }
%struct.lima_sched_task = type { %struct.lima_sched_task* }
%struct.drm_lima_gem_submit_bo = type { %struct.drm_lima_gem_submit_bo* }
%struct.lima_ctx = type { i32 }
%struct.lima_submit = type { i32, i32, i32, i32*, %struct.lima_ctx*, %struct.lima_sched_task*, i8*, %struct.lima_sched_task*, i32, i32 }

@lima_pipe_num = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LIMA_SUBMIT_FLAG_EXPLICIT_FENCE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i8*, %struct.drm_file*)* @lima_ioctl_gem_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_ioctl_gem_submit(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_lima_gem_submit*, align 8
  %9 = alloca %struct.lima_device*, align 8
  %10 = alloca %struct.lima_drm_priv*, align 8
  %11 = alloca %struct.drm_lima_gem_submit_bo*, align 8
  %12 = alloca %struct.lima_sched_pipe*, align 8
  %13 = alloca %struct.lima_sched_task*, align 8
  %14 = alloca %struct.lima_ctx*, align 8
  %15 = alloca %struct.lima_submit, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_lima_gem_submit*
  store %struct.drm_lima_gem_submit* %19, %struct.drm_lima_gem_submit** %8, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.lima_device* @to_lima_dev(%struct.drm_device* %20)
  store %struct.lima_device* %21, %struct.lima_device** %9, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %23, align 8
  store %struct.lima_drm_priv* %24, %struct.lima_drm_priv** %10, align 8
  %25 = bitcast %struct.lima_submit* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 64, i1 false)
  store i32 0, i32* %17, align 4
  %26 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %27 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @lima_pipe_num, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %33 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %216

39:                                               ; preds = %31
  %40 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %41 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LIMA_SUBMIT_FLAG_EXPLICIT_FENCE, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %216

50:                                               ; preds = %39
  %51 = load %struct.lima_device*, %struct.lima_device** %9, align 8
  %52 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %51, i32 0, i32 0
  %53 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %52, align 8
  %54 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %55 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %53, i64 %57
  store %struct.lima_sched_pipe* %58, %struct.lima_sched_pipe** %12, align 8
  %59 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %60 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %63 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %216

69:                                               ; preds = %50
  %70 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %71 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.lima_sched_task* @kvcalloc(i32 %72, i32 9, i32 %73)
  %75 = bitcast %struct.lima_sched_task* %74 to %struct.drm_lima_gem_submit_bo*
  store %struct.drm_lima_gem_submit_bo* %75, %struct.drm_lima_gem_submit_bo** %11, align 8
  %76 = load %struct.drm_lima_gem_submit_bo*, %struct.drm_lima_gem_submit_bo** %11, align 8
  %77 = icmp ne %struct.drm_lima_gem_submit_bo* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %216

81:                                               ; preds = %69
  %82 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %83 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  store i64 %86, i64* %16, align 8
  %87 = load %struct.drm_lima_gem_submit_bo*, %struct.drm_lima_gem_submit_bo** %11, align 8
  %88 = bitcast %struct.drm_lima_gem_submit_bo* %87 to %struct.lima_sched_task*
  %89 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %90 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @u64_to_user_ptr(i32 %91)
  %93 = load i64, i64* %16, align 8
  %94 = call i64 @copy_from_user(%struct.lima_sched_task* %88, i32 %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @EFAULT, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %17, align 4
  br label %211

99:                                               ; preds = %81
  %100 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %101 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.lima_sched_task* @kmem_cache_zalloc(i32 %102, i32 %103)
  store %struct.lima_sched_task* %104, %struct.lima_sched_task** %13, align 8
  %105 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %106 = icmp ne %struct.lima_sched_task* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %17, align 4
  br label %211

110:                                              ; preds = %99
  %111 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %112 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %111, i64 1
  %113 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %114 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %113, i32 0, i32 0
  store %struct.lima_sched_task* %112, %struct.lima_sched_task** %114, align 8
  %115 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %116 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %115, i32 0, i32 0
  %117 = load %struct.lima_sched_task*, %struct.lima_sched_task** %116, align 8
  %118 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %119 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @u64_to_user_ptr(i32 %120)
  %122 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %123 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @copy_from_user(%struct.lima_sched_task* %117, i32 %121, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %110
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %17, align 4
  br label %201

130:                                              ; preds = %110
  %131 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %132 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %131, i32 0, i32 1
  %133 = load i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)*, i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)** %132, align 8
  %134 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %135 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %136 = call i32 %133(%struct.lima_sched_pipe* %134, %struct.lima_sched_task* %135)
  store i32 %136, i32* %17, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %201

140:                                              ; preds = %130
  %141 = load %struct.lima_drm_priv*, %struct.lima_drm_priv** %10, align 8
  %142 = getelementptr inbounds %struct.lima_drm_priv, %struct.lima_drm_priv* %141, i32 0, i32 0
  %143 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %144 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.lima_ctx* @lima_ctx_get(i32* %142, i32 %145)
  store %struct.lima_ctx* %146, %struct.lima_ctx** %14, align 8
  %147 = load %struct.lima_ctx*, %struct.lima_ctx** %14, align 8
  %148 = icmp ne %struct.lima_ctx* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* @ENOENT, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %17, align 4
  br label %201

152:                                              ; preds = %140
  %153 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %154 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 8
  store i32 %155, i32* %156, align 8
  %157 = load %struct.drm_lima_gem_submit_bo*, %struct.drm_lima_gem_submit_bo** %11, align 8
  %158 = bitcast %struct.drm_lima_gem_submit_bo* %157 to %struct.lima_sched_task*
  %159 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 7
  store %struct.lima_sched_task* %158, %struct.lima_sched_task** %159, align 8
  %160 = load %struct.drm_lima_gem_submit_bo*, %struct.drm_lima_gem_submit_bo** %11, align 8
  %161 = bitcast %struct.drm_lima_gem_submit_bo* %160 to i8*
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr i8, i8* %161, i64 %162
  %164 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 6
  store i8* %163, i8** %164, align 8
  %165 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %166 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %170 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 5
  store %struct.lima_sched_task* %169, %struct.lima_sched_task** %170, align 8
  %171 = load %struct.lima_ctx*, %struct.lima_ctx** %14, align 8
  %172 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 4
  store %struct.lima_ctx* %171, %struct.lima_ctx** %172, align 8
  %173 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %174 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %178 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %181, i32* %184, align 4
  %185 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %186 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %189, i32* %192, align 4
  %193 = load %struct.drm_lima_gem_submit*, %struct.drm_lima_gem_submit** %8, align 8
  %194 = getelementptr inbounds %struct.drm_lima_gem_submit, %struct.drm_lima_gem_submit* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.lima_submit, %struct.lima_submit* %15, i32 0, i32 2
  store i32 %195, i32* %196, align 8
  %197 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %198 = call i32 @lima_gem_submit(%struct.drm_file* %197, %struct.lima_submit* %15)
  store i32 %198, i32* %17, align 4
  %199 = load %struct.lima_ctx*, %struct.lima_ctx** %14, align 8
  %200 = call i32 @lima_ctx_put(%struct.lima_ctx* %199)
  br label %201

201:                                              ; preds = %152, %149, %139, %127
  %202 = load i32, i32* %17, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %12, align 8
  %206 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.lima_sched_task*, %struct.lima_sched_task** %13, align 8
  %209 = call i32 @kmem_cache_free(i32 %207, %struct.lima_sched_task* %208)
  br label %210

210:                                              ; preds = %204, %201
  br label %211

211:                                              ; preds = %210, %107, %96
  %212 = load %struct.drm_lima_gem_submit_bo*, %struct.drm_lima_gem_submit_bo** %11, align 8
  %213 = bitcast %struct.drm_lima_gem_submit_bo* %212 to %struct.lima_sched_task*
  %214 = call i32 @kvfree(%struct.lima_sched_task* %213)
  %215 = load i32, i32* %17, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %211, %78, %66, %47, %36
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local %struct.lima_device* @to_lima_dev(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.lima_sched_task* @kvcalloc(i32, i32, i32) #1

declare dso_local i64 @copy_from_user(%struct.lima_sched_task*, i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.lima_sched_task* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.lima_ctx* @lima_ctx_get(i32*, i32) #1

declare dso_local i32 @lima_gem_submit(%struct.drm_file*, %struct.lima_submit*) #1

declare dso_local i32 @lima_ctx_put(%struct.lima_ctx*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.lima_sched_task*) #1

declare dso_local i32 @kvfree(%struct.lima_sched_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
