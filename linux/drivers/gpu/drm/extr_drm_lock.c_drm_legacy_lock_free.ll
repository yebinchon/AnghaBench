; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lock.c_drm_legacy_lock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_lock_data = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"%d freed heavyweight lock held by %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_lock_data*, i32)* @drm_legacy_lock_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_legacy_lock_free(%struct.drm_lock_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_lock_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.drm_lock_data* %0, %struct.drm_lock_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %11 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* %13, i32** %9, align 8
  %14 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %15 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %18 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %23 = call i32 @drm_lock_transfer(%struct.drm_lock_data* %22, i32 0)
  %24 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %25 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %27 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %26, i32 0, i32 3
  %28 = call i32 @spin_unlock_bh(i32* %27)
  store i32 1, i32* %3, align 4
  br label %64

29:                                               ; preds = %2
  %30 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %31 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %30, i32 0, i32 3
  %32 = call i32 @spin_unlock_bh(i32* %31)
  br label %33

33:                                               ; preds = %42, %29
  %34 = load i32*, i32** %9, align 8
  %35 = load volatile i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @_DRM_LOCKING_CONTEXT(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @cmpxchg(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %33, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @_DRM_LOCK_IS_HELD(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @_DRM_LOCKING_CONTEXT(i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @_DRM_LOCKING_CONTEXT(i32 %57)
  %59 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58)
  store i32 1, i32* %3, align 4
  br label %64

60:                                               ; preds = %50, %46
  %61 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %62 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %61, i32 0, i32 2
  %63 = call i32 @wake_up_interruptible(i32* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %55, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @drm_lock_transfer(%struct.drm_lock_data*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_DRM_LOCKING_CONTEXT(i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i64 @_DRM_LOCK_IS_HELD(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
