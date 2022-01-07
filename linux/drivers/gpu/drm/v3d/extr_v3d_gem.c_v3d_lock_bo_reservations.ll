; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_lock_bo_reservations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_gem.c_v3d_lock_bo_reservations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_job = type { i32, i32*, i32 }
%struct.ww_acquire_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v3d_job*, %struct.ww_acquire_ctx*)* @v3d_lock_bo_reservations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_lock_bo_reservations(%struct.v3d_job* %0, %struct.ww_acquire_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v3d_job*, align 8
  %5 = alloca %struct.ww_acquire_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v3d_job* %0, %struct.v3d_job** %4, align 8
  store %struct.ww_acquire_ctx* %1, %struct.ww_acquire_ctx** %5, align 8
  %8 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %9 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %12 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %15 = call i32 @drm_gem_lock_reservations(i32* %10, i32 %13, %struct.ww_acquire_ctx* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %24 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %29 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %28, i32 0, i32 2
  %30 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %31 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @drm_gem_fence_array_add_implicit(i32* %29, i32 %36, i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %42 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.v3d_job*, %struct.v3d_job** %4, align 8
  %45 = getelementptr inbounds %struct.v3d_job, %struct.v3d_job* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %5, align 8
  %48 = call i32 @drm_gem_unlock_reservations(i32* %43, i32 %46, %struct.ww_acquire_ctx* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %55

50:                                               ; preds = %27
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %21

54:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %40, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @drm_gem_lock_reservations(i32*, i32, %struct.ww_acquire_ctx*) #1

declare dso_local i32 @drm_gem_fence_array_add_implicit(i32*, i32, i32) #1

declare dso_local i32 @drm_gem_unlock_reservations(i32*, i32, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
