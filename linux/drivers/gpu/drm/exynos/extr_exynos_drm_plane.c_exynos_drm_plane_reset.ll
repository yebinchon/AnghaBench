; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_plane.c_exynos_drm_plane_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.exynos_drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.exynos_drm_plane_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*)* @exynos_drm_plane_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_plane_reset(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.exynos_drm_plane*, align 8
  %4 = alloca %struct.exynos_drm_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = call %struct.exynos_drm_plane* @to_exynos_plane(%struct.drm_plane* %5)
  store %struct.exynos_drm_plane* %6, %struct.exynos_drm_plane** %3, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(%struct.TYPE_5__* %14)
  store %struct.exynos_drm_plane_state* %15, %struct.exynos_drm_plane_state** %4, align 8
  %16 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %17 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_5__* %18)
  %20 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %4, align 8
  %21 = call i32 @kfree(%struct.exynos_drm_plane_state* %20)
  %22 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %23, align 8
  br label %24

24:                                               ; preds = %11, %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.exynos_drm_plane_state* @kzalloc(i32 4, i32 %25)
  store %struct.exynos_drm_plane_state* %26, %struct.exynos_drm_plane_state** %4, align 8
  %27 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %4, align 8
  %28 = icmp ne %struct.exynos_drm_plane_state* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %31 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %31, i32 0, i32 0
  %33 = call i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane* %30, i32* %32)
  %34 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %3, align 8
  %35 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %24
  ret void
}

declare dso_local %struct.exynos_drm_plane* @to_exynos_plane(%struct.drm_plane*) #1

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(%struct.TYPE_5__*) #1

declare dso_local i32 @__drm_atomic_helper_plane_destroy_state(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_plane_state*) #1

declare dso_local %struct.exynos_drm_plane_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_plane_reset(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
