; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_atomic_commit_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_atomic_commit_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_atomic_state*)* @omap_atomic_commit_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_atomic_commit_tail(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.omap_drm_private*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %5 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %6 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.omap_drm_private*, %struct.omap_drm_private** %9, align 8
  store %struct.omap_drm_private* %10, %struct.omap_drm_private** %4, align 8
  %11 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %12 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %17 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %15(i32 %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %22 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %20, %struct.drm_atomic_state* %21)
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %24 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 13360
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %30 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %28, %struct.drm_atomic_state* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %33 = call i32 @omap_atomic_wait_for_completion(%struct.drm_device* %31, %struct.drm_atomic_state* %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %36 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %34, %struct.drm_atomic_state* %35, i32 0)
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %38 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %37)
  br label %48

39:                                               ; preds = %1
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %42 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %40, %struct.drm_atomic_state* %41, i32 0)
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %45 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %43, %struct.drm_atomic_state* %44)
  %46 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %47 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %46)
  br label %48

48:                                               ; preds = %39, %27
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %51 = call i32 @omap_atomic_wait_for_completion(%struct.drm_device* %49, %struct.drm_atomic_state* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %54 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %52, %struct.drm_atomic_state* %53)
  %55 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %56 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.omap_drm_private*, %struct.omap_drm_private** %4, align 8
  %61 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 %59(i32 %62)
  ret void
}

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @omap_atomic_wait_for_completion(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
