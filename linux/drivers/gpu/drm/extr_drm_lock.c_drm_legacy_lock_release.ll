; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"File %p released, freeing lock for context %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_lock_release(%struct.drm_device* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.drm_file*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  store %struct.drm_file* %8, %struct.drm_file** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %17 = call i64 @drm_legacy_i_have_hw_lock(%struct.drm_device* %15, %struct.drm_file* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_DRM_LOCKING_CONTEXT(i32 %28)
  %30 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.file* %20, i32 %29)
  %31 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %32 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %36 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @_DRM_LOCKING_CONTEXT(i32 %42)
  %44 = call i32 @drm_legacy_lock_free(%struct.TYPE_6__* %34, i32 %43)
  br label %45

45:                                               ; preds = %13, %19, %14
  ret void
}

declare dso_local i64 @drm_legacy_i_have_hw_lock(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DRM_DEBUG(i8*, %struct.file*, i32) #1

declare dso_local i32 @_DRM_LOCKING_CONTEXT(i32) #1

declare dso_local i32 @drm_legacy_lock_free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
