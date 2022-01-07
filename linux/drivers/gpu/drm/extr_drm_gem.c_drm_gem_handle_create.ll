; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_handle_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_handle_create(%struct.drm_file* %0, %struct.drm_gem_object* %1, i32* %2) #0 {
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca i32*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %4, align 8
  store %struct.drm_gem_object* %1, %struct.drm_gem_object** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %13 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @drm_gem_handle_create_tail(%struct.drm_file* %12, %struct.drm_gem_object* %13, i32* %14)
  ret i32 %15
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_gem_handle_create_tail(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
