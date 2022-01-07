; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_wait_idle_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_wait_idle_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_gem_wait_idle = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_gem_wait_idle_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_gem_wait_idle*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %union.drm_amdgpu_gem_wait_idle*
  store %union.drm_amdgpu_gem_wait_idle* %16, %union.drm_amdgpu_gem_wait_idle** %8, align 8
  %17 = load %union.drm_amdgpu_gem_wait_idle*, %union.drm_amdgpu_gem_wait_idle** %8, align 8
  %18 = bitcast %union.drm_amdgpu_gem_wait_idle* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %union.drm_amdgpu_gem_wait_idle*, %union.drm_amdgpu_gem_wait_idle** %8, align 8
  %22 = bitcast %union.drm_amdgpu_gem_wait_idle* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @amdgpu_gem_timeout(i32 %24)
  store i64 %25, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %26, i32 %27)
  store %struct.drm_gem_object* %28, %struct.drm_gem_object** %9, align 8
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %30 = icmp eq %struct.drm_gem_object* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %62

34:                                               ; preds = %3
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %36 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %35)
  store %struct.amdgpu_bo* %36, %struct.amdgpu_bo** %10, align 8
  %37 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i64 @dma_resv_wait_timeout_rcu(i32 %41, i32 1, i32 1, i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %union.drm_amdgpu_gem_wait_idle*, %union.drm_amdgpu_gem_wait_idle** %8, align 8
  %48 = call i32 @memset(%union.drm_amdgpu_gem_wait_idle* %47, i32 0, i32 8)
  %49 = load i64, i64* %14, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %union.drm_amdgpu_gem_wait_idle*, %union.drm_amdgpu_gem_wait_idle** %8, align 8
  %53 = bitcast %union.drm_amdgpu_gem_wait_idle* %52 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %58

55:                                               ; preds = %34
  %56 = load i64, i64* %14, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %60 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %31
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @amdgpu_gem_timeout(i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i64 @dma_resv_wait_timeout_rcu(i32, i32, i32, i64) #1

declare dso_local i32 @memset(%union.drm_amdgpu_gem_wait_idle*, i32, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
