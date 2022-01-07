; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_atomic_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_atomic_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_atomic_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_atomic_state*, i32)* @mtk_atomic_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_atomic_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_drm_private*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %11, align 8
  store %struct.mtk_drm_private* %12, %struct.mtk_drm_private** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %15 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %13, %struct.drm_atomic_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %60

20:                                               ; preds = %3
  %21 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %26 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @flush_work(i32* %27)
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %30 = call i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state* %29, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %35 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %40 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %38, %struct.drm_atomic_state* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %20
  %43 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %44 = call i32 @drm_atomic_state_get(%struct.drm_atomic_state* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %49 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %50 = call i32 @mtk_atomic_schedule(%struct.mtk_drm_private* %48, %struct.drm_atomic_state* %49)
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %54 = call i32 @mtk_atomic_complete(%struct.mtk_drm_private* %52, %struct.drm_atomic_state* %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %8, align 8
  %57 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %33, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @drm_atomic_helper_prepare_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_get(%struct.drm_atomic_state*) #1

declare dso_local i32 @mtk_atomic_schedule(%struct.mtk_drm_private*, %struct.drm_atomic_state*) #1

declare dso_local i32 @mtk_atomic_complete(%struct.mtk_drm_private*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
