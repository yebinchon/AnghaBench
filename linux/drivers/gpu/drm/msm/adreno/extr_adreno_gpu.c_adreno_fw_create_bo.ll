; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_fw_create_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_fw_create_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.msm_gpu = type { i32, i32 }
%struct.firmware = type { i64, i32* }

@MSM_BO_UNCACHED = common dso_local global i32 0, align 4
@MSM_BO_GPU_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @adreno_fw_create_bo(%struct.msm_gpu* %0, %struct.firmware* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %struct.msm_gpu*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca i8*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.firmware*, %struct.firmware** %6, align 8
  %14 = getelementptr inbounds %struct.firmware, %struct.firmware* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %15, 4
  %17 = load i32, i32* @MSM_BO_UNCACHED, align 4
  %18 = load i32, i32* @MSM_BO_GPU_READONLY, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %5, align 8
  %21 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @msm_gem_kernel_new_locked(i32 %12, i64 %16, i32 %19, i32 %22, %struct.drm_gem_object** %8, i32* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  %30 = call %struct.drm_gem_object* @ERR_CAST(i8* %29)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %4, align 8
  br label %45

31:                                               ; preds = %3
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 4
  %41 = call i32 @memcpy(i8* %32, i32* %36, i64 %40)
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %43 = call i32 @msm_gem_put_vaddr(%struct.drm_gem_object* %42)
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  store %struct.drm_gem_object* %44, %struct.drm_gem_object** %4, align 8
  br label %45

45:                                               ; preds = %31, %28
  %46 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %46
}

declare dso_local i8* @msm_gem_kernel_new_locked(i32, i64, i32, i32, %struct.drm_gem_object**, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local %struct.drm_gem_object* @ERR_CAST(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @msm_gem_put_vaddr(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
