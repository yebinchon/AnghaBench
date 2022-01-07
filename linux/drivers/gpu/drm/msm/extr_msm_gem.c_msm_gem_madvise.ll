; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_madvise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_msm_gem_madvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.msm_gem_object = type { i64, i32 }

@__MSM_MADV_PURGED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gem_madvise(%struct.drm_gem_object* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %7 = call %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object* %6)
  store %struct.msm_gem_object* %7, %struct.msm_gem_object** %5, align 8
  %8 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %9 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_is_locked(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %21 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @__MSM_MADV_PURGED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %29 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %32 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.msm_gem_object*, %struct.msm_gem_object** %5, align 8
  %36 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @__MSM_MADV_PURGED, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local %struct.msm_gem_object* @to_msm_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
