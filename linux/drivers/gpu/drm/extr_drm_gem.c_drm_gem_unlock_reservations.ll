; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_unlock_reservations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_unlock_reservations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32 }
%struct.ww_acquire_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_unlock_reservations(%struct.drm_gem_object** %0, i32 %1, %struct.ww_acquire_ctx* %2) #0 {
  %4 = alloca %struct.drm_gem_object**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ww_acquire_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object** %0, %struct.drm_gem_object*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ww_acquire_ctx* %2, %struct.ww_acquire_ctx** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %13, i64 %15
  %17 = load %struct.drm_gem_object*, %struct.drm_gem_object** %16, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_resv_unlock(i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %6, align 8
  %26 = call i32 @ww_acquire_fini(%struct.ww_acquire_ctx* %25)
  ret void
}

declare dso_local i32 @dma_resv_unlock(i32) #1

declare dso_local i32 @ww_acquire_fini(%struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
