; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_idlelock_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_idlelock_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_lock_data = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRM_KERNEL_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_legacy_idlelock_release(%struct.drm_lock_data* %0) #0 {
  %2 = alloca %struct.drm_lock_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.drm_lock_data* %0, %struct.drm_lock_data** %2, align 8
  %6 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %7 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* %9, i32** %5, align 8
  %10 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %11 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %14 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %20 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load volatile i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @DRM_KERNEL_CONTEXT, align 4
  %30 = call i32 @cmpxchg(i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %31
  %36 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %37 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %36, i32 0, i32 3
  %38 = call i32 @wake_up_interruptible(i32* %37)
  %39 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %40 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %18
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %44 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock_bh(i32* %44)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
