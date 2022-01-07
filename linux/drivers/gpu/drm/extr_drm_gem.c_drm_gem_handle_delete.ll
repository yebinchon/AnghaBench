; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32, i32 }
%struct.drm_gem_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_handle_delete(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %8 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %11 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %10, i32 0, i32 1
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.drm_gem_object* @idr_replace(i32* %11, i32* null, i32 %12)
  store %struct.drm_gem_object* %13, %struct.drm_gem_object** %6, align 8
  %14 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %15 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %18 = call i64 @IS_ERR_OR_NULL(%struct.drm_gem_object* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.drm_gem_object*, %struct.drm_gem_object** %6, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %27 = call i32 @drm_gem_object_release_handle(i32 %24, %struct.drm_gem_object* %25, %struct.drm_file* %26)
  %28 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %29 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %32 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %31, i32 0, i32 1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @idr_remove(i32* %32, i32 %33)
  %35 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %36 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %23, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_replace(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_object_release_handle(i32, %struct.drm_gem_object*, %struct.drm_file*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
