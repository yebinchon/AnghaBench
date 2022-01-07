; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_put_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_put_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@drm_gem_object_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_object_put_unlocked(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %4 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %5 = icmp ne %struct.drm_gem_object* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %9 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %8, i32 0, i32 1
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %3, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %7
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = call i32 @might_lock(i32* %19)
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 0
  %23 = load i32, i32* @drm_gem_object_free, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = call i64 @kref_put_mutex(i32* %22, i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %17
  br label %38

33:                                               ; preds = %7
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %35 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %34, i32 0, i32 0
  %36 = load i32, i32* @drm_gem_object_free, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %6, %33, %32
  ret void
}

declare dso_local i32 @might_lock(i32*) #1

declare dso_local i64 @kref_put_mutex(i32*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
