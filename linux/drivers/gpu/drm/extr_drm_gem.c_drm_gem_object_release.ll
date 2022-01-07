; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_object_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_object_release(%struct.drm_gem_object* %0) #0 {
  %2 = alloca %struct.drm_gem_object*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %2, align 8
  %3 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %8 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %13 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @fput(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 0
  %19 = call i32 @dma_resv_fini(i32* %18)
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %2, align 8
  %21 = call i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object* %20)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fput(i64) #1

declare dso_local i32 @dma_resv_fini(i32*) #1

declare dso_local i32 @drm_gem_free_mmap_offset(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
