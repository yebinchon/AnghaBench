; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get_entity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_get_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ctx = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.drm_sched_entity }
%struct.drm_sched_entity = type { i32 }

@AMDGPU_HW_IP_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown HW IP type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid ip instance: %d\0A\00", align 1
@amdgpu_ctx_num_entities = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid ring: %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ctx_get_entity(%struct.amdgpu_ctx* %0, i64 %1, i64 %2, i64 %3, %struct.drm_sched_entity** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_sched_entity**, align 8
  store %struct.amdgpu_ctx* %0, %struct.amdgpu_ctx** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.drm_sched_entity** %4, %struct.drm_sched_entity*** %11, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @AMDGPU_HW_IP_NUM, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %52

20:                                               ; preds = %5
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %20
  %29 = load i64, i64* %10, align 8
  %30 = load i64*, i64** @amdgpu_ctx_num_entities, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %29, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 (i8*, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %36, i64 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.amdgpu_ctx*, %struct.amdgpu_ctx** %7, align 8
  %43 = getelementptr inbounds %struct.amdgpu_ctx, %struct.amdgpu_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.drm_sched_entity**, %struct.drm_sched_entity*** %11, align 8
  store %struct.drm_sched_entity* %50, %struct.drm_sched_entity** %51, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %41, %35, %23, %15
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
