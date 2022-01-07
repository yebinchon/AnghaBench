; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sched.c_amdgpu_sched_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_sched.c_amdgpu_sched_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_sched = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DRM_SCHED_PRIORITY_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid sched op specified: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_sched_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_sched*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %union.drm_amdgpu_sched*
  store %union.drm_amdgpu_sched* %13, %union.drm_amdgpu_sched** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %9, align 8
  %17 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %18 = bitcast %union.drm_amdgpu_sched* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @amdgpu_to_sched_priority(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @DRM_SCHED_PRIORITY_INVALID, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %30 = bitcast %union.drm_amdgpu_sched* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %53 [
    i32 128, label %33
    i32 129, label %41
  ]

33:                                               ; preds = %28
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %35 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %36 = bitcast %union.drm_amdgpu_sched* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @amdgpu_sched_process_priority_override(%struct.amdgpu_device* %34, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  br label %61

41:                                               ; preds = %28
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %43 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %44 = bitcast %union.drm_amdgpu_sched* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %48 = bitcast %union.drm_amdgpu_sched* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @amdgpu_sched_context_priority_override(%struct.amdgpu_device* %42, i32 %46, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %28
  %54 = load %union.drm_amdgpu_sched*, %union.drm_amdgpu_sched** %8, align 8
  %55 = bitcast %union.drm_amdgpu_sched* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %53, %41, %33
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @amdgpu_to_sched_priority(i32) #1

declare dso_local i32 @amdgpu_sched_process_priority_override(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_sched_context_priority_override(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
