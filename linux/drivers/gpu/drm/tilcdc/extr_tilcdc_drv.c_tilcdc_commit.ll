; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_drv.c_tilcdc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_atomic_state*, i32)* @tilcdc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tilcdc_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %11 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %9, %struct.drm_atomic_state* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %18 = call i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state* %17, i32 1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %24 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %22, %struct.drm_atomic_state* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %16
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %29 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %27, %struct.drm_atomic_state* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %32 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %30, %struct.drm_atomic_state* %31, i32 0)
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %35 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %33, %struct.drm_atomic_state* %34)
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = call i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device* %36, %struct.drm_atomic_state* %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %41 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %39, %struct.drm_atomic_state* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %26, %21, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @drm_atomic_helper_prepare_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_wait_for_vblanks(%struct.drm_device*, %struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
