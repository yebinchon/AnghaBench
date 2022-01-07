; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ctx.c_amdgpu_ctx_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32 }
%union.drm_amdgpu_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DRM_SCHED_PRIORITY_INVALID = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ctx_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.drm_amdgpu_ctx*, align 8
  %12 = alloca %struct.amdgpu_device*, align 8
  %13 = alloca %struct.amdgpu_fpriv*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %union.drm_amdgpu_ctx*
  store %union.drm_amdgpu_ctx* %15, %union.drm_amdgpu_ctx** %11, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %12, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %20, align 8
  store %struct.amdgpu_fpriv* %21, %struct.amdgpu_fpriv** %13, align 8
  store i32 0, i32* %8, align 4
  %22 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %23 = bitcast %union.drm_amdgpu_ctx* %22 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %27 = bitcast %union.drm_amdgpu_ctx* %26 to %struct.TYPE_5__*
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @amdgpu_to_sched_priority(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DRM_SCHED_PRIORITY_INVALID, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @DRM_SCHED_PRIORITY_NORMAL, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %3
  %37 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %38 = bitcast %union.drm_amdgpu_ctx* %37 to %struct.TYPE_5__*
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %70 [
    i32 131, label %41
    i32 130, label %52
    i32 129, label %56
    i32 128, label %63
  ]

41:                                               ; preds = %36
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %43 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @amdgpu_ctx_alloc(%struct.amdgpu_device* %42, %struct.amdgpu_fpriv* %43, %struct.drm_file* %44, i32 %45, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %49 = bitcast %union.drm_amdgpu_ctx* %48 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %73

52:                                               ; preds = %36
  %53 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @amdgpu_ctx_free(%struct.amdgpu_fpriv* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %73

56:                                               ; preds = %36
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %58 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %61 = bitcast %union.drm_amdgpu_ctx* %60 to %struct.TYPE_7__*
  %62 = call i32 @amdgpu_ctx_query(%struct.amdgpu_device* %57, %struct.amdgpu_fpriv* %58, i32 %59, %struct.TYPE_7__* %61)
  store i32 %62, i32* %8, align 4
  br label %73

63:                                               ; preds = %36
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  %65 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %13, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %union.drm_amdgpu_ctx*, %union.drm_amdgpu_ctx** %11, align 8
  %68 = bitcast %union.drm_amdgpu_ctx* %67 to %struct.TYPE_7__*
  %69 = call i32 @amdgpu_ctx_query2(%struct.amdgpu_device* %64, %struct.amdgpu_fpriv* %65, i32 %66, %struct.TYPE_7__* %68)
  store i32 %69, i32* %8, align 4
  br label %73

70:                                               ; preds = %36
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %63, %56, %52, %41
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @amdgpu_to_sched_priority(i32) #1

declare dso_local i32 @amdgpu_ctx_alloc(%struct.amdgpu_device*, %struct.amdgpu_fpriv*, %struct.drm_file*, i32, i32*) #1

declare dso_local i32 @amdgpu_ctx_free(%struct.amdgpu_fpriv*, i32) #1

declare dso_local i32 @amdgpu_ctx_query(%struct.amdgpu_device*, %struct.amdgpu_fpriv*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @amdgpu_ctx_query2(%struct.amdgpu_device*, %struct.amdgpu_fpriv*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
